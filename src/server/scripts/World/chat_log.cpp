////////////////////////////////////////////////////////////////////////////////
//
// Project-Hellscream https://hellscream.org
// Copyright (C) 2018-2020 Project-Hellscream-6.2
// Discord https://discord.gg/CWCF3C9
//
////////////////////////////////////////////////////////////////////////////////

#include "ScriptMgr.h"
#include "Channel.h"
#ifndef CROSS
#include "Guild.h"
#endif /* not CROSS */
#include "Group.h"
#ifdef CROSS
#include "GuildMgr.h"
#endif /* CROSS */

class ChatLogScript: public PlayerScript
{
public:
    ChatLogScript() : PlayerScript("ChatLogScript") { }

    void OnChat(Player* player, uint32 type, uint32 lang, std::string& msg)
    {
        switch (type)
        {
            case CHAT_MSG_ADDON:
                if (sWorld->getBoolConfig(CONFIG_CHATLOG_ADDON))
                    TC_LOG_DEBUG("chat.log", "[ADDON] Player %s sends: %s",
                        player->GetName(), msg.c_str());
                break;

            case CHAT_MSG_SAY:
                if (sWorld->getBoolConfig(CONFIG_CHATLOG_PUBLIC))
                    TC_LOG_DEBUG("chat.log", "[SAY] Player %s says (language %u): %s",
                        player->GetName(), lang, msg.c_str());
                break;

            case CHAT_MSG_EMOTE:
                if (sWorld->getBoolConfig(CONFIG_CHATLOG_PUBLIC))
                    TC_LOG_DEBUG("chat.log", "[TEXTEMOTE] Player %s emotes: %s",
                        player->GetName(), msg.c_str());
                break;

            case CHAT_MSG_YELL:
                if (sWorld->getBoolConfig(CONFIG_CHATLOG_PUBLIC))
                    TC_LOG_DEBUG("chat.log", "[YELL] Player %s yells (language %u): %s",
                        player->GetName(), lang, msg.c_str());
                break;
        }

        if (type != uint32(CHAT_MSG_ADDON))
            if (player->GetSession() && player->GetSession()->GetSecurity() > SEC_PLAYER) // 876 == GmIsland and GmBox
                sLog->outGmChat(type, player->GetSession()->GetAccountId(), "", player->GetGUIDLow(), player->GetName(), 0, "", 0, "", msg.c_str());
    }

    void OnChat(Player* player, uint32 type, uint32 lang, std::string& msg, Player* receiver)
    {
        if (lang != LANG_ADDON && sWorld->getBoolConfig(CONFIG_CHATLOG_WHISPER))
            TC_LOG_DEBUG("chat.log", "[WHISPER] Player %s tells %s: %s",
                player->GetName(), receiver ? receiver->GetName() : "<unknown>", msg.c_str());
        else if (lang == LANG_ADDON && sWorld->getBoolConfig(CONFIG_CHATLOG_ADDON))
            TC_LOG_DEBUG("chat.log", "[ADDON] Player %s tells %s: %s",
                player->GetName(), receiver ? receiver->GetName() : "<unknown>", msg.c_str());

        if ((player->GetSession() && receiver->GetSession()) && (player->GetSession()->GetSecurity() > SEC_PLAYER || receiver->GetSession()->GetSecurity() > SEC_PLAYER))
            sLog->outGmChat(type,
                            player->GetSession()->GetAccountId(),   "", player->GetGUIDLow(),   player->GetName(),
                            receiver->GetSession()->GetAccountId(), "", receiver->GetGUIDLow(), receiver->GetName(),
                            msg.c_str());
    }

    void OnChat(Player* player, uint32 type, uint32 lang, std::string& msg, Group* group)
    {
        //! NOTE:
        //! LANG_ADDON can only be sent by client in "PARTY", "RAID", "GUILD", "BATTLEGROUND", "WHISPER"
        switch (type)
        {
            case CHAT_MSG_PARTY:
                if (lang != LANG_ADDON && sWorld->getBoolConfig(CONFIG_CHATLOG_PARTY))
                    TC_LOG_DEBUG("chat.log", "[PARTY] Player %s tells group with leader %s: %s",
                        player->GetName(), group ? group->GetLeaderName() : "<unknown>", msg.c_str());
                else if (lang == LANG_ADDON && sWorld->getBoolConfig(CONFIG_CHATLOG_ADDON))
                    TC_LOG_DEBUG("chat.log", "[ADDON] Player %s tells group with leader %s: %s",
                        player->GetName(), group ? group->GetLeaderName() : "<unknown>", msg.c_str());
                break;

            case CHAT_MSG_PARTY_LEADER:
                if (sWorld->getBoolConfig(CONFIG_CHATLOG_PARTY))
                    TC_LOG_DEBUG("chat.log", "[PARTY] Leader %s tells group: %s",
                        player->GetName(), msg.c_str());
                break;

            case CHAT_MSG_RAID:
                if (lang != LANG_ADDON && sWorld->getBoolConfig(CONFIG_CHATLOG_RAID))
                    TC_LOG_DEBUG("chat.log", "[RAID] Player %s tells raid with leader %s: %s",
                        player->GetName(), group ? group->GetLeaderName() : "<unknown>", msg.c_str());
                else if (lang == LANG_ADDON && sWorld->getBoolConfig(CONFIG_CHATLOG_ADDON))
                    TC_LOG_DEBUG("chat.log", "[ADDON] Player %s tells raid with leader %s: %s",
                        player->GetName(), group ? group->GetLeaderName() : "<unknown>", msg.c_str());
                break;

            case CHAT_MSG_RAID_LEADER:
                if (sWorld->getBoolConfig(CONFIG_CHATLOG_RAID))
                    TC_LOG_DEBUG("chat.log", "[RAID] Leader player %s tells raid: %s",
                        player->GetName(), msg.c_str());
                break;

            case CHAT_MSG_RAID_WARNING:
                if (sWorld->getBoolConfig(CONFIG_CHATLOG_RAID))
                    TC_LOG_DEBUG("chat.log", "[RAID] Leader player %s warns raid with: %s",
                        player->GetName(), msg.c_str());
                break;

            case CHAT_MSG_INSTANCE_CHAT:
                if (lang != LANG_ADDON && sWorld->getBoolConfig(CONFIG_CHATLOG_BGROUND))
                    TC_LOG_DEBUG("chat.log", "[BATTLEGROUND] Player %s tells battleground with leader %s: %s",
                        player->GetName(), group ? group->GetLeaderName() : "<unknown>", msg.c_str());
                else if (lang == LANG_ADDON && sWorld->getBoolConfig(CONFIG_CHATLOG_ADDON))
                    TC_LOG_DEBUG("chat.log", "[ADDON] Player %s tells battleground with leader %s: %s",
                        player->GetName(), group ? group->GetLeaderName() : "<unknown>", msg.c_str());
                break;

            case CHAT_MSG_INSTANCE_CHAT_LEADER:
                if (sWorld->getBoolConfig(CONFIG_CHATLOG_BGROUND))
                    TC_LOG_DEBUG("chat.log", "[BATTLEGROUND] Leader player %s tells battleground: %s",
                        player->GetName(), msg.c_str());
                break;
        }
    }

#ifndef CROSS
    void OnChat(Player* player, uint32 type, uint32 lang, std::string& msg, Guild* guild)
#else /* CROSS */
    void OnChat(Player* player, uint32 type, uint32 lang, std::string& msg, InterRealmGuild* guild)
#endif /* CROSS */
    {
        switch (type)
        {
            case CHAT_MSG_GUILD:
                if (lang != LANG_ADDON && sWorld->getBoolConfig(CONFIG_CHATLOG_GUILD))
                    TC_LOG_DEBUG("chat.log", "[GUILD] Player %s tells guild %s: %s",
                        player->GetName(), guild ? guild->GetName().c_str() : "<unknown>", msg.c_str());
                else if (lang == LANG_ADDON && sWorld->getBoolConfig(CONFIG_CHATLOG_ADDON))
                    TC_LOG_DEBUG("chat.log", "[ADDON] Player %s sends to guild %s: %s",
                        player->GetName(), guild ? guild->GetName().c_str() : "<unknown>", msg.c_str());
                break;

            case CHAT_MSG_OFFICER:
                if (sWorld->getBoolConfig(CONFIG_CHATLOG_GUILD))
                    TC_LOG_DEBUG("chat.log", "[OFFICER] Player %s tells guild %s officers: %s",
                        player->GetName(), guild ? guild->GetName().c_str() : "<unknown>", msg.c_str());
                break;
        }
    }

    void OnChat(Player* player, uint32 type, uint32 /*lang*/, std::string& msg, Channel* channel)
    {
        bool isSystem = channel &&
                        (channel->HasFlag(CHANNEL_FLAG_TRADE) ||
                         channel->HasFlag(CHANNEL_FLAG_GENERAL) ||
                         channel->HasFlag(CHANNEL_FLAG_CITY) ||
                         channel->HasFlag(CHANNEL_FLAG_LFG));

        if (sWorld->getBoolConfig(CONFIG_CHATLOG_SYSCHAN) && isSystem)
            TC_LOG_DEBUG("chat.log", "[SYSCHAN] Player %s tells channel %s: %s",
                player->GetName(), channel->GetName().c_str(), msg.c_str());
        else if (sWorld->getBoolConfig(CONFIG_CHATLOG_CHANNEL))
            TC_LOG_DEBUG("chat.log", "[CHANNEL] Player %s tells channel %s: %s",
                player->GetName(), channel ? channel->GetName().c_str() : "<unknown>", msg.c_str());

        if (player->GetSession() && player->GetSession()->GetSecurity() > SEC_PLAYER)
        {
            std::string logBuffer = "[CHANNEL : " + channel->GetName() + "] : " + msg;
            sLog->outGmChat(type, player->GetSession()->GetAccountId(), "", player->GetGUIDLow(), player->GetName(), 0, "", 0, "", logBuffer.c_str());
        }
    }
};

#ifndef __clang_analyzer__
void AddSC_chat_log()
{
    new ChatLogScript();
}
#endif
