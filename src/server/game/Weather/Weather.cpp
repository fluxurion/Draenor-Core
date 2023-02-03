////////////////////////////////////////////////////////////////////////////////
//
// Project-Hellscream https://hellscream.org
// Copyright (C) 2018-2020 Project-Hellscream-6.2
// Discord https://discord.gg/CWCF3C9
//
////////////////////////////////////////////////////////////////////////////////

/** \file
    \ingroup world
*/

#include "Weather.h"
#include "WorldPacket.h"
#include "Player.h"
#include "World.h"
#include "Log.h"
#include "ObjectMgr.h"
#include "Util.h"
#include "ScriptMgr.h"

/// Create the Weather object
Weather::Weather(uint32 zone, WeatherData const* weatherChances)
    : m_zone(zone), m_weatherChances(weatherChances)
{
    m_timer.SetInterval(sWorld->getIntConfig(CONFIG_INTERVAL_CHANGEWEATHER));
    m_type = WEATHER_TYPE_FINE;
    m_grade = 0;

    TC_LOG_INFO("misc", "WORLD: Starting weather system for zone %u (change every %u minutes).", m_zone, (uint32)(m_timer.GetInterval() / (MINUTE*IN_MILLISECONDS)));
}

/// Launch a weather update
bool Weather::Update(uint32 diff)
{
    if (m_timer.GetCurrent() >= 0)
        m_timer.Update(diff);
    else
        m_timer.SetCurrent(0);

    ///- If the timer has passed, ReGenerate the weather
    if (m_timer.Passed())
    {
        m_timer.Reset();
        // update only if Regenerate has changed the weather
        if (ReGenerate())
        {
            ///- Weather will be removed if not updated (no players in zone anymore)
            if (!UpdateWeather())
                return false;
        }
    }

    sScriptMgr->OnWeatherUpdate(this, diff);
    return true;
}

/// Calculate the new weather
bool Weather::ReGenerate()
{
    if (!m_weatherChances)
    {
        m_type = WEATHER_TYPE_FINE;
        m_grade = 0.0f;
        return false;
    }

    /// Weather statistics:
    ///- 30% - no change
    ///- 30% - weather gets better (if not fine) or change weather type
    ///- 30% - weather worsens (if not fine)
    ///- 10% - radical change (if not fine)
    uint32 u = urand(0, 99);

    if (u < 30)
        return false;

    // remember old values
    WeatherType old_type = m_type;
    float old_grade = m_grade;

    //78 days between January 1st and March 20nd; 365/4=91 days by season
    // season source http://aa.usno.navy.mil/data/docs/EarthSeasons.html
    time_t gtime = sWorld->GetGameTime();
    struct tm ltime;
    localtime_r(&gtime, &ltime);
    uint32 season = ((ltime.tm_yday - 78 + 365) / 91) % 4;

    static char const* seasonName[WEATHER_SEASONS] = { "spring", "summer", "fall", "winter" };

    TC_LOG_INFO("misc", "Generating a change in %s weather for zone %u.", seasonName[season], m_zone);

    if ((u < 60) && (m_grade < 0.33333334f))                // Get fair
    {
        m_type = WEATHER_TYPE_FINE;
        m_grade = 0.0f;
    }

    if ((u < 60) && (m_type != WEATHER_TYPE_FINE))          // Get better
    {
        m_grade -= 0.33333334f;
        return true;
    }

    if ((u < 90) && (m_type != WEATHER_TYPE_FINE))          // Get worse
    {
        m_grade += 0.33333334f;
        return true;
    }

    if (m_type != WEATHER_TYPE_FINE)
    {
        /// Radical change:
        ///- if light -> heavy
        ///- if medium -> change weather type
        ///- if heavy -> 50% light, 50% change weather type

        if (m_grade < 0.33333334f)
        {
            m_grade = 0.9999f;                              // go nuts
            return true;
        }
        else
        {
            if (m_grade > 0.6666667f)
            {
                                                            // Severe change, but how severe?
                uint32 rnd = urand(0, 99);
                if (rnd < 50)
                {
                    m_grade -= 0.6666667f;
                    return true;
                }
            }
            m_type = WEATHER_TYPE_FINE;                     // clear up
            m_grade = 0;
        }
    }

    // At this point, only weather that isn't doing anything remains but that have weather data
    uint32 chance1 = m_weatherChances->data[season].rainChance;
    uint32 chance2 = chance1+ m_weatherChances->data[season].snowChance;
    uint32 chance3 = chance2+ m_weatherChances->data[season].stormChance;

    uint32 rnd = urand(0, 99);
    if (rnd <= chance1)
        m_type = WEATHER_TYPE_RAIN;
    else if (rnd <= chance2)
        m_type = WEATHER_TYPE_SNOW;
    else if (rnd <= chance3)
        m_type = WEATHER_TYPE_STORM;
    else
        m_type = WEATHER_TYPE_FINE;

    /// New weather statistics (if not fine):
    ///- 85% light
    ///- 7% medium
    ///- 7% heavy
    /// If fine 100% sun (no fog)

    if (m_type == WEATHER_TYPE_FINE)
    {
        m_grade = 0.0f;
    }
    else if (u < 90)
    {
        m_grade = (float)rand_norm() * 0.3333f;
    }
    else
    {
        // Severe change, but how severe?
        rnd = urand(0, 99);
        if (rnd < 50)
            m_grade = (float)rand_norm() * 0.3333f + 0.3334f;
        else
            m_grade = (float)rand_norm() * 0.3333f + 0.6667f;
    }

    // return true only in case weather changes
    return m_type != old_type || m_grade != old_grade;
}

void Weather::SendWeatherUpdateToPlayer(Player * p_Player)
{
    WorldPacket l_Data(SMSG_WEATHER, (4 + 4 + 4));
    l_Data << uint32(GetWeatherState());
    l_Data << float(m_grade);
    l_Data.WriteBit(0);
    l_Data.FlushBits();

    p_Player->GetSession()->SendPacket(&l_Data);
}

/// Send the new weather to all players in the zone
bool Weather::UpdateWeather()
{
    Player* l_Player = sWorld->FindPlayerInZone(m_zone);

    if (!l_Player)
        return false;

    ///- Send the weather packet to all players in this zone
    if (m_grade >= 1)
        m_grade = 0.9999f;
    else if (m_grade < 0)
        m_grade = 0.0001f;

    WeatherState l_State = GetWeatherState();

    WorldPacket l_Data(SMSG_WEATHER, (4 + 4 + 4));
    l_Data << uint32(l_State);
    l_Data << float(m_grade);
    l_Data.WriteBit(0);
    l_Data.FlushBits();

    l_Player->SendMessageToSet(&l_Data, true);

    ///- Log the event
    char const* wthstr;
    switch (l_State)
    {
        case WEATHER_STATE_FOG:
            wthstr = "fog";
            break;
        case WEATHER_STATE_LIGHT_RAIN:
            wthstr = "light rain";
            break;
        case WEATHER_STATE_MEDIUM_RAIN:
            wthstr = "medium rain";
            break;
        case WEATHER_STATE_HEAVY_RAIN:
            wthstr = "heavy rain";
            break;
        case WEATHER_STATE_LIGHT_SNOW:
            wthstr = "light snow";
            break;
        case WEATHER_STATE_MEDIUM_SNOW:
            wthstr = "medium snow";
            break;
        case WEATHER_STATE_HEAVY_SNOW:
            wthstr = "heavy snow";
            break;
        case WEATHER_STATE_LIGHT_SANDSTORM:
            wthstr = "light sandstorm";
            break;
        case WEATHER_STATE_MEDIUM_SANDSTORM:
            wthstr = "medium sandstorm";
            break;
        case WEATHER_STATE_HEAVY_SANDSTORM:
            wthstr = "heavy sandstorm";
            break;
        case WEATHER_STATE_THUNDERS:
            wthstr = "thunders";
            break;
        case WEATHER_STATE_BLACKRAIN:
            wthstr = "blackrain";
            break;
        case WEATHER_STATE_FINE:
        default:
            wthstr = "fine";
            break;
    }
    TC_LOG_INFO("misc", "Change the weather of zone %u to %s.", m_zone, wthstr);

    sScriptMgr->OnWeatherChange(this, l_State, m_grade);
    return true;
}

/// Set the weather
void Weather::SetWeather(WeatherType type, float grade)
{
    if (m_type == type && m_grade == grade)
        return;

    m_type = type;
    m_grade = grade;
    UpdateWeather();
}

/// Get the sound number associated with the current weather
WeatherState Weather::GetWeatherState() const
{
    if (m_grade<0.27f)
        return WEATHER_STATE_FINE;

    switch (m_type)
    {
        case WEATHER_TYPE_RAIN:
            if (m_grade<0.40f)
                return WEATHER_STATE_LIGHT_RAIN;
            else if (m_grade<0.70f)
                return WEATHER_STATE_MEDIUM_RAIN;
            else
                return WEATHER_STATE_HEAVY_RAIN;
        case WEATHER_TYPE_SNOW:
            if (m_grade<0.40f)
                return WEATHER_STATE_LIGHT_SNOW;
            else if (m_grade<0.70f)
                return WEATHER_STATE_MEDIUM_SNOW;
            else
                return WEATHER_STATE_HEAVY_SNOW;
        case WEATHER_TYPE_STORM:
            if (m_grade<0.40f)
                return WEATHER_STATE_LIGHT_SANDSTORM;
            else if (m_grade<0.70f)
                return WEATHER_STATE_MEDIUM_SANDSTORM;
            else
                return WEATHER_STATE_HEAVY_SANDSTORM;
        //case WEATHER_TYPE_BLACKRAIN:
        //    return WEATHER_STATE_BLACKRAIN;
        //case WEATHER_TYPE_THUNDERS:
        //    return WEATHER_STATE_THUNDERS;
        case WEATHER_TYPE_FINE:
        default:
            return WEATHER_STATE_FINE;
    }
}

