/// @description Change to underworld
// You can write your code in this editor
global.alivePlayer = false;
spawnUnderWorld = true;
oDeadPlayer.x = global.lastAliveXPosition;
oDeadPlayer.y = (global.aliveWorldY - global.lastAliveYPosition) + global.underWorldY + 32;
oDeadPlayer.alarm[0] = room_speed*1;