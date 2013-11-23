/// Keyboard control
var player = argument[0];

if(keyboard_check_direct(vk_left))
{
    player.m_drone.m_move = -1;
}
else if(keyboard_check_direct(vk_right))
{
    player.m_drone.m_move = 1;
}
else
{
    player.m_drone.m_move = 0;
}

// Fire input
if(keyboard_check_direct(vk_space))
{
    player.m_weapons[player.m_curSlot].m_isFiring = true;
}
else
{
    player.m_weapons[player.m_curSlot].m_isFiring = false;
}

//Slot 1 Input
if(keyboard_check_direct(ord("V")))
{
    player.m_curSlot = 0;
}
//Slot 2 Input
else if((keyboard_check_direct(ord("B")))&&(player.m_slots[1]!=WP_NONE))
{
    show_debug_message("Slot 1");
    player.m_curSlot = 1;
}
//Slot 3 Input
else if((keyboard_check_direct(ord("N")))&&(player.m_slots[2]!=WP_NONE))
{
    show_debug_message("Slot 2");
    player.m_curSlot = 2;
}
