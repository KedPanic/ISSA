// check if player pushed left
var player = argument[0];

if(player.m_controller == KEYBOARD)
{
    return keyboard_check_pressed(vk_right);
}

return gamepad_axis_value(player.m_controller, gp_axislh) > DEAD_ZONE;
