/// Keyboard control
var drone = argument[0];

if(keyboard_check_direct(vk_left))
{
    drone.m_move = -1;
}
else if(keyboard_check_direct(vk_right))
{
    drone.m_move = 1;
}
else
{
    drone.m_move = 0;
}

