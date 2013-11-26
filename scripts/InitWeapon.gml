///player,slot_index,type
var player = argument[0];
var index = argument[1];
if(player.m_slots[index]!=WP_NONE)
{
    switch(player.m_slots[index])
    {
        case WP_BLOB:
        {
            player.m_weapons[index].m_fireRate = WP_FIRERATE;
            player.m_weapons[index].m_type = WP_BLOB;
            player.m_weapons[index].m_ammo = 50;
            break;
        }
        case WP_HOLE:
        {
            player.m_weapons[index].m_fireRate = WP_FIRERATE*4;
            player.m_weapons[index].m_type = WP_HOLE;
            player.m_weapons[index].m_ammo = 10;
            break;
        }
        case WP_MINE:
        {
            player.m_weapons[index].m_fireRate = WP_FIRERATE/1.5;
            player.m_weapons[index].m_type = WP_MINE;
            player.m_weapons[index].m_ammo = 45;
            break;
        }
        case WP_FLAME:
        {
            player.m_weapons[index].m_fireRate = WP_FIRERATE/3;
            player.m_weapons[index].m_type = WP_FLAME;
            player.m_weapons[index].m_ammo = 60;
            break;
        }
        case WP_ROCKET:
        {
            player.m_weapons[index].m_fireRate = WP_FIRERATE*3;
            player.m_weapons[index].m_type = WP_ROCKET;
            player.m_weapons[index].m_ammo = 20;
            break;
        }
        case WP_TRIPLE:
        {
            player.m_weapons[index].m_fireRate = WP_FIRERATE*2;
            player.m_weapons[index].m_type = WP_TRIPLE;
            player.m_weapons[index].m_ammo = 90;
            break;
        }
        case WP_DEFAULT:
        {
            player.m_weapons[index].m_fireRate = WP_FIRERATE;
            player.m_weapons[index].m_type = WP_DEFAULT;
            player.m_weapons[index].m_ammo = -1;
            break;
        }
        default:
        {
            break;
        }
    }
    player.m_weapons[index].m_curFireRate = 0;
    player.m_weapons[index].m_isFiring = false;
    player.m_weapons[index].m_player = player;
    //show_debug_message("Weapon n° "+string(index)+" initiated for Player : "+string(player.id));
}
