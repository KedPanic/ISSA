/// MenuPlayerValidate(player)
var player = argument[0];

if(player.m_controller == KEYBOARD)
{   
    if(keyboard_check_pressed(vk_enter))
    {
        return true;
    }
}
else
{       
    if(gamepad_button_check_pressed(player.m_controller, gp_face1))
    {
        return true;
    }
}

return false;
