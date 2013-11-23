///player,slot_index,type
var player = argument[0];
var index = argument[1];
switch(argument[2])
{
    case WP_TRIPLE:
    {
        player.m_weapons[index].m_fireRate = 20;
        player.m_weapons[index].m_type = WP_TRIPLE;
        player.m_weapons[index].m_ammo = 90;
        break;
    }
    default:
    {
        player.m_weapons[index].m_fireRate = 10;
        player.m_weapons[index].m_type = WP_DEFAULT;
        player.m_weapons[index].m_ammo = -1;
        break;
    }
}
player.m_weapons[argument[1]].m_curFireRate = 0;
player.m_weapons[argument[1]].m_player = argument[0];
player.m_weapons[argument[1]].m_isFiring = false;
