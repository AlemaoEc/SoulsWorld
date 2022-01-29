/// @description Insert description here
// You can write your code in this editor
instance_destroy(global.currentUnderworldEnemy);
global.currentUnderworldEnemy = 0;

oDeadPlayer.state = DEADPLAYERSTATE.DEAD;

oPlayer.x = global.lastDeadXPosition;
oPlayer.y = global.aliveWorldY - (global.lastDeadYPosition - global.underWorldY) - 32;
oPlayer.alarm[0] = room_speed*2;

alarm[2] = room_speed*1;