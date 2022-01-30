function PlayerState_Free() {
	// Calculate movement
	var _move = key_right - key_left;
	hsp = _move * walksp;
	
	PlayerHorizontalCollisionPortal();
	PlayerHorizontalCollisionWall();
	PlayerHorizontalCollisionEnemy();
	x += hsp;
	
	// Animation
	if (!place_meeting(x,y+1,oWall))
	{
		sprite_index = sPlayerAir;
		image_speed = 0;
		image_index = (vsp > 0)? 1 : 0;
		state = PLAYERSTATE.JUMP;
	}
	else
	{
		image_speed = 1;
		sprite_index = (hsp == 0)? sPlayerIdle : sPlayerRun;
	}

	if (hsp != 0) image_xscale = sign(hsp);
	
	if (PlayerVerticalCollisionFloorDamage()) {
		PlayerHit(1);
	}

	if (key_attack && sprite_index != sPlayerAir) state = PLAYERSTATE.ATTACK_SLASH;
	if (key_jump){
		state = PLAYERSTATE.JUMP;
	} 
}
