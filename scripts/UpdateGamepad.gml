/// Gamepad control
var drone = argument[0];
var gamepad = argument[1];

var value = gamepad_axis_value(gamepad, gp_axislh);
if(value < -DEAD_ZONE)
{
    drone.m_move = -1;
}
else if(value > DEAD_ZONE)
{
    drone.m_move = 1;
}
else
{
    drone.m_move = 0;
}

