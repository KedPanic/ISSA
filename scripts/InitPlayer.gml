/// Initialize the player.
var player = argument[0];

player.m_drone = instance_create(0, 0, o_drone);
        
// set the position.
var angles;
angles[0] = arctan2(-1, -1);
angles[1] = arctan2(1, -1);
angles[2] = arctan2(-1, 1);
angles[3] = arctan2(1, 1);

player.m_drone.m_angle = angles[player.m_id];
player.m_drone.x = 512 + (cos(player.m_drone.m_angle) * ((sprite_get_width(ship) / 2) + sprite_get_width(s_drone)));
player.m_drone.y = 512 + (sin(player.m_drone.m_angle) * ((sprite_get_height(ship) / 2) + sprite_get_height(s_drone)));

for(i=0; i<SLOTS_MAX; i++)
{
    InitWeapon(player,i);
}
