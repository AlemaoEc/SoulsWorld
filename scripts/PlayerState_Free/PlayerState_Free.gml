function PlayerState_Free() {
	// Calculate movement
	var _move = key_right - key_left;
	hsp = _move * walksp;

	PlayerHorizontalCollisionWall();
	PlayerHorizontalCollisionEnemy();
	x += hsp;

	// Animation
	if (!place_meeting(x,y+1,oWall))
	{
		sprite_index = sPlayerAir;
		image_speed = 0;
		image_index = (vsp > 0)? 1 : 0;
	}
	else
	{
		image_speed = 2;
		sprite_index = (hsp == 0)? sPlayerIdle : sPlayerRun;
		alreadyAirAttacked = false;
	}

	if (hsp != 0) image_xscale = sign(hsp);
	
	if (PlayerVerticalCollisionFloorDamage()) {
		PlayerHit(1);
	}

	if (key_attack && sprite_index != sPlayerAir) state = PLAYERSTATE.ATTACK_SLASH;
	if (key_attack && sprite_index == sPlayerAir && !alreadyAirAttacked) state = PLAYERSTATE.AIR_ATTACK;
	if (key_jump){
		show_debug_message("Entrei JUMP");
		state = PLAYERSTATE.JUMP;
	} 
	if (key_jump && state == PLAYERSTATE.JUMP) {
		state = PLAYERSTATE.DOUBLE_JUMP;
	}
}
