// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GameState_UnderWorldPlaying(){
	if (spawnUnderWorld == true && (oDeadPlayer.state != DEADPLAYERSTATE.DEAD)) {
		spawnUnderWorld = false;
		
		show_debug_message("nemy Spaws")
		_enemyPositionX = oDeadPlayer.x+100;
		_enemyPositionY= oDeadPlayer.y;

		//spawn the enemy
		//while(collision_rectangle(_enemyPositionX,_enemyPositionY,_enemyPositionX+40,_enemyPositionY-128 ,oPortal,false,true) or
		//	  collision_rectangle(_enemyPositionX,_enemyPositionY,_enemyPositionX+40,_enemyPositionY-128 ,oWall,false,true) or
		//	  collision_rectangle(_enemyPositionX,_enemyPositionY,_enemyPositionX+40,_enemyPositionY-128 ,oFloorDamage,false,true)
		//) {
		//	show_debug_message("(X,Y)" +"("+string(_enemyPositionX)+","+string(_enemyPositionY)+")");
			
		//	if(collision_rectangle(_enemyPositionX,_enemyPositionY,_enemyPositionX+40,_enemyPositionY-128 ,oPortal,false,true)) {
		//		show_debug_message("Enemy collision oPortal");
		//	}
		//	if(collision_rectangle(_enemyPositionX,_enemyPositionY,_enemyPositionX+40,_enemyPositionY-128 ,oWall,false,true)) {
		//		show_debug_message("Enemy collision oWall");
		//	}
		//	if(collision_rectangle(_enemyPositionX,_enemyPositionY,_enemyPositionX+40,_enemyPositionY-128 ,oFloorDamage,false,true)) {
		//		show_debug_message("Enemy collision oFloorDamage");
		//	}
			
		//	randomize();
		//	_enemyPositionX = oDeadPlayer.x + random(256);
	    //} 
		show_debug_message("Enemy with no colision");
		show_debug_message("(X,Y)" +"("+string(_enemyPositionX)+","+string(_enemyPositionY)+")");
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













