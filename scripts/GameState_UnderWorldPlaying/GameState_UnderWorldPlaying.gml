// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GameState_UnderWorldPlaying(){
	if (spawnUnderWorld == true && (oDeadPlayer.state != DEADPLAYERSTATE.DEAD)) {
		spawnUnderWorld = false;
		//spawn the enemy
		global.currentUnderworldEnemy = instance_create_layer(oDeadPlayer.x+100, oDeadPlayer.y, "Instances", oUnderworldEnemy);
	}
	
	if (global.currentUnderworldEnemy != 0) {
		if (oUnderworldEnemy.state == UNDERWORLDENEMYSTATE.DEAD) {
			global.lastDeadXPosition = oDeadPlayer.x;
			global.lastDeadYPosition = oDeadPlayer.y;
			oPlayer.isResurrecting = true;
			alarm[1] = room_speed*1;
			state = GAMESTATE.ALIVEWORLDPLAYING;
		}
	}
}