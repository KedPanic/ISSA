var g = argument[0];

switch(g_gameManager.m_curLevel)
{
    default:
    {
        g.m_spawnRateMin = 1;
        g.m_spawnRateMax = 150;
        g.m_enemyTypes = 2;
        g.m_maxEnemies = 10;
        g.m_stageTime = 1*1000;
        break;
    }
}
g.m_curEnemies = 0;
g.m_curSpawnRate = g.m_spawnRateMin;
