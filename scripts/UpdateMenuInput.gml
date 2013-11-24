// check if player pushed left
var player = argument[0];

var value = 0;
var validate = false;
var cancel = false;
if(player.m_controller == KEYBOARD)
{
    if(keyboard_check_pressed(vk_left))
    {
        value = -1;
    }
    else if(keyboard_check_pressed(vk_right))
    {
        value = 1;
    }
    
    if(keyboard_check_pressed(vk_enter))
    {
        validate = true;
    }
    else if(keyboard_check_pressed(vk_escape))
    {
        cancel = true;
    }
}
else
{
    if(gamepad_axis_value(player.m_controller, gp_axislh) < -DEAD_ZONE)
    {
        value = -1;
    }
    else if(gamepad_axis_value(player.m_controller, gp_axislh) > DEAD_ZONE)
    {
        value = 1;
    }
    
    if(gamepad_button_check_pressed(player.m_controller, gp_padd))
    {
        validate = true;
    }
    if(gamepad_button_check_pressed(player.m_controller, gp_padr))
    {
        cancel = true;
    }
}

if(player.m_eyebrow == INVALID_EYEBROW)
{
    if(player.m_color + value >= 0 and player.m_color + value < NB_COLORS)
    {
        player.m_color += value;
    }        
    
    if(validate)
    {
        player.m_eyebrow = 0;
    }
}
else
{
    if(player.m_eyebrow + value >= 0 and player.m_eyebrow + value < NB_EYEBROWS)
    {
        player.m_eyebrow += value;
    }
    
    if(validate)
    {
        return true; // end of selection.
    }
    else if(cancel)
    {
        player.m_eyebrow = INVALID_EYEBROW;
    }
}

return false;
