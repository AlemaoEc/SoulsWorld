// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GameState_UnderWorldPlaying(){
	if (spawnUnderWorld == true && (oDeadPlayer.state != DEADPLAYERSTATE.DEAD)) {
		spawnUnderWorld = false;
		
		_enemyPositionX = oDeadPlayer.x+100;
		_enemyPositionY= oDeadPlayer.y;

		//spawn the enemy
		while(position_meeting(_enemyPositionX,_enemyPositionY, oPortal) or
			  position_meeting(_enemyPositionX,_enemyPositionY, oWall) or
		      position_meeting(_enemyPositionX,_enemyPositionY, oFloorDamage) or
			  position_meeting(_enemyPositionX,_enemyPositionY, oDeadPlayer)
		) {
			randomize();
			_enemyPositionX = oDeadPlayer.x + random_range(-384,384);
	    } 
		global.currentUnderworldEnemy = instance_create_layer(_enemyPositionX, _enemyPositionY, "Instances", oUnderworldEnemy);
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













