function UnderworldEnemyState_Idle() {
	hsp = 0;
	vsp = 0;

	sprite_index = sUnderworldEnemyIdle;
	
	while (!place_meeting(x,y-1, oWall)) {
		y -= 1;
	}
}
