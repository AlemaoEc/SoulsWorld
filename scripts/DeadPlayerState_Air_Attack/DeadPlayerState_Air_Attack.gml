function DeadPlayerState_Air_Attack() {
	image_speed = 2;
	DeadPlayerProcessAttack(sDeadPlayerAirAttack, sDeadPlayerAirAttackHB);

	// Calculate movement
	var _move = key_right - key_left;

	hsp = _move * walksp/2;

	vsp += grv*2;
	
	DeadPlayerHorizontalCollisionPortal();
	DeadPlayerHorizontalCollisionWall();
	x += hsp;
	
	DeadPlayerVerticalCollisionPortal();
	DeadPlayerVerticalCollisionWall();
	y -= vsp;

	if (AnimationEnd())
	{
		alreadyAirAttacked = true;
		state = DEADPLAYERSTATE.JUMP;
	}
}
