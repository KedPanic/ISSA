/// Check if there is a new player request.
if(g_playerManager.m_nbPlayers < MAX_PLAYER)
{
    for(var i = 0; i < MAX_PLAYER; i++)
    {
        if(gamepad_is_connected(i))
        {
            if(g_playerManager.m_gamepads[i] == INVALID_GAMEPAD)
            {
                if(gamepad_button_check_pressed(i, gp_start) == true)
                {
                    CreatePlayer(i);
                } 
            }
        }
    }

    if(g_playerManager.m_keyboard == INVALID_GAMEPAD and keyboard_check_pressed(vk_enter))
    {
        CreatePlayer(KEYBOARD);
    }
}
