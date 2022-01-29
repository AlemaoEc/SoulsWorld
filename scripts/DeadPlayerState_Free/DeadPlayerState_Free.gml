function DeadPlayerState_Free() {
	// Calculate movement
	var _move = key_right - key_left;
	hsp = _move * walksp;
	
	DeadPlayerHorizontalCollisionWall();
	DeadPlayerHorizontalCollisionEnemy();
	x += hsp;

	// Animation
	if (!place_meeting(x,y-1,oWall))
	{
		sprite_index = sDeadPlayerAir;
		image_speed = 0;
		image_index = (vsp > 0)? 1 : 0;
	}
	else
	{
		image_speed = 2;
		sprite_index = (hsp == 0)? sDeadPlayerIdle : sDeadPlayerRun;
		alreadyAirAttacked = false;
		alreadyDoubleJumped = false;
		jumps = MAX_JUMPS;
	}

	if (hsp != 0) image_xscale = sign(hsp);
	
	if (DeadPlayerVerticalCollisionFloorDamage()) {
		DeadPlayerHit(1);
	}

	if (keyAttack and sprite_index != sDeadPlayerAir) state = DEADPLAYERSTATE.ATTACK_SLASH;
	if (keyAttack and sprite_index == sDeadPlayerAir && !alreadyAirAttacked) state = DEADPLAYERSTATE.AIR_ATTACK;
	if (key_jump){
		state = DEADPLAYERSTATE.JUMP;
	}
}
