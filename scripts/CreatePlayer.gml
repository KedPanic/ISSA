/// CreatePlayer
var controller = argument[0];

// create player instance.
var player = instance_create(0, 0, o_player);
player.m_id = g_playerManager.m_nbPlayers;
player.m_controller = controller;

if(controller != KEYBOARD)
{
    g_playerManager.m_gamepads[controller] = player.m_id;
}

g_playerManager.m_players[player.m_id] = player;
g_playerManager.m_nbPlayers++;
return player;
