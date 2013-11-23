/// Gamepad control
/*var drone = argument[0].m_drone;
var gamepad = argument[0].m_controller;*/
var player = argument[0];

var value = gamepad_axis_value(player.m_controller, gp_axislh);
if(value < -DEAD_ZONE)
{
    player.m_drone.m_move = -1;
}
else if(value > DEAD_ZONE)
{
    player.m_drone.m_move = 1;
}
else
{
    player.m_drone.m_move = 0;
}

// Fire input
if(gamepad_button_check(player.m_controller,gp_shoulderrb))
{
    player.m_weapons[player.m_curSlot].m_isFiring = true;
}
else
{
    player.m_weapons[player.m_curSlot].m_isFiring = false;
}

//Slot 1 Input
if(gamepad_button_check(player.m_controller,gp_face3))
{
    player.m_curSlot = 0;
}
//Slot 2 Input
else if((gamepad_button_check(player.m_controller,gp_face4))&&(player.m_slots[1]!=WP_NONE))
{
    player.m_curSlot = 1;
}
//Slot 3 Input
else if((gamepad_button_check(player.m_controller,gp_face2))&&(player.m_slots[2]!=WP_NONE))
{
    player.m_curSlot = 2;
}

