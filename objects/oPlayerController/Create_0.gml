/// @description Insert description here
// You can write your code in this editor
global.alivePlayer = true;

global.aliveWorldY = 576;
global.underWorldY = 1600;

global.lastAliveXPosition = 0;
global.lastAliveYPosition = 0
global.lastDeadXPosition = 0;
global.lastDeadYPosition = 0;

global.currentUnderworldEnemy = 0;

state = GAMESTATE.ALIVEWORLDPLAYING;

enum GAMESTATE
{
	ALIVEWORLDPLAYING,
	UNDERWORLDPLAYING
}

spawnUnderWorld = false;