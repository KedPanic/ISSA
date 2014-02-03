if((g_playerManager.m_players[0]!= INVALID_PLAYER)&&(g_playerManager.m_players[0].m_score>0))
{
    argument0.m_cash+=g_playerManager.m_players[0].m_score
    g_playerManager.m_players[0].m_score = 0;
}
if((g_playerManager.m_players[1]!= INVALID_PLAYER)&&(g_playerManager.m_players[1].m_score>0))
{
    argument0.m_cash+=g_playerManager.m_players[1].m_score
    g_playerManager.m_players[1].m_score = 0;
}

if((g_playerManager.m_players[2]!= INVALID_PLAYER)&&(g_playerManager.m_players[2].m_score>0))
{
    argument0.m_cash+=g_playerManager.m_players[2].m_score
    g_playerManager.m_players[2].m_score = 0;
}

if((g_playerManager.m_players[3]!= INVALID_PLAYER)&&(g_playerManager.m_players[3].m_score>0))
{
    argument0.m_cash+=g_playerManager.m_players[3].m_score
    g_playerManager.m_players[3].m_score = 0;
}

argument0.m_scoreOver[0] = true;
argument0.m_scoreOver[1] = true;
argument0.m_scoreOver[2] = true;
argument0.m_scoreOver[3] = true;
