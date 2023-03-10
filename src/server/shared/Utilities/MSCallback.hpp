////////////////////////////////////////////////////////////////////////////////
//
// Project-Hellscream https://hellscream.org
// Copyright (C) 2018-2020 Project-Hellscream-6.2
// Discord https://discord.gg/CWCF3C9
//
////////////////////////////////////////////////////////////////////////////////

#ifndef _MILLENIUMSTUDIO_CALLBACK_HPP
#define _MILLENIUMSTUDIO_CALLBACK_HPP

#include "Common.h"

namespace MS
{
    namespace Utilities
    {
        typedef std::function<void(bool /*p_Sucess*/)>     FuncCallBack;

        enum class CallBackState : uint8
        {
            Waiting,
            Fail,
            Success
        };

        struct Callback
        {
            Callback(FuncCallBack p_Callback)
            {
                m_CallBack = p_Callback;
                m_State    = CallBackState::Waiting;
            }

            FuncCallBack   m_CallBack;
            CallBackState  m_State;
        };

        typedef std::shared_ptr<Callback>                  CallBackPtr;
    }
}

#endif
