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
else
{
    assert(g_playerManager.m_keyboard == INVALID_GAMEPAD, "keyboard is already setted");
    g_playerManager.m_keyboard = player.m_id;
}

g_playerManager.m_players[player.m_id] = player;
g_playerManager.m_nbPlayers++;

if(room != r_selection)
{
    // TO DO: assigning a random (and not yet used) color to the new Player
    player.m_eyebrow = irandom_range(0,7);
}

return player;
