var g = argument[0];

switch(g_gameManager.m_curLevel)
{
    default:
    {
        g.m_spawnRateMin = 60;
        g.m_spawnRateMax = 120;
        g.m_enemyTypes = 2;
        g.m_maxEnemies = 30;

        break;
    }
}
g.m_curEnemies = 0;
g.m_curSpawnRate = g.m_spawnRateMin;
