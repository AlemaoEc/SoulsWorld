function DeadPlayerState_Free() {
	// Calculate movement
	var _move = key_right - key_left;
	hsp = _move * walksp;
	
	PlayerHorizontalCollisionWall();
	PlayerHorizontalCollisionEnemy();
	x += hsp;

	show_debug_message("Y do boneco");
	show_debug_message(y);
	// Animation
	if (!place_meeting(x,y-1,oWall))
	{
		show_debug_message("Fora do wall");
		sprite_index = sDeadPlayerAir;
		image_speed = 0;
		image_index = (vsp > 0)? 1 : 0;
	}
	else
	{
		show_debug_message("No wall");
		image_speed = 2;
		sprite_index = (hsp == 0)? sDeadPlayerIdle : sDeadPlayerRun;
		alreadyAirAttacked = false;
	}

	if (hsp != 0) image_xscale = sign(hsp);

	if (keyAttack && sprite_index != sDeadPlayerAir) state = DEADPLAYERSTATE.ATTACK_SLASH;
	if (keyAttack && sprite_index == sDeadPlayerAir && !alreadyAirAttacked) state = DEADPLAYERSTATE.AIR_ATTACK;
	if (key_jump){
		state = DEADPLAYERSTATE.JUMP;
	} 
	if (key_jump && state == DEADPLAYERSTATE.JUMP) {
		state = DEADPLAYERSTATE.DOUBLE_JUMP;
	}
}
