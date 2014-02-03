var sMax = g_playerManager.m_players[0].m_score;
var ind = 0;

for(i=0;i<g_playerManager.m_nbPlayers; i++)
{
    if(g_playerManager.m_players[i].m_score > sMax)
    {
        sMax = g_playerManager.m_players[i].m_score;
        ind = i;
    }
}

//g_playerManager.m_bestPlayer = ind;
g_gameManager.m_bestPlayer = g_playerManager.m_players[ind];
show_debug_message("-> Best Player = "+string(g_gameManager.m_bestPlayer.m_id));
