///player,slot_index,type
var player = argument[0];
var index = argument[1];
if(player.m_slots[index]!=WP_NONE)
{
    switch(player.m_slots[index])
    {
        case WP_TRIPLE:
        {
            //show_debug_message("[INIT] Initiating WP_TRIPLE for Player : "+string(player));
            player.m_weapons[index].m_fireRate = 20;
            player.m_weapons[index].m_type = WP_TRIPLE;
            player.m_weapons[index].m_ammo = 90;
            break;
        }
        case WP_DEFAULT:
        {
            //show_debug_message("[INIT] Initiating WP_DEFAULT for Player : "+string(player));
            player.m_weapons[index].m_fireRate = 10;
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
