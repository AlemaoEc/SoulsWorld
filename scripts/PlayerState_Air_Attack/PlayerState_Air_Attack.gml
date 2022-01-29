function PlayerState_Air_Attack() {
	image_speed = 2;
	PlayerProcessAttack(sPlayerAirAttack, sPlayerAirAttackHB);

	// Calculate movement
	var _move = key_right - key_left;

	hsp = _move * walksp/2;
	
	PlayerHorizontalCollisionWall();
	x += hsp;

	vsp += grv*2;
	PlayerVerticalCollisionWall();
	PlayerVerticalCollisionEnemy();
	PlayerVerticalCollisionPortal();
	y += vsp;

	if (AnimationEnd())
	{
		alreadyAirAttacked = true;
		state = PLAYERSTATE.JUMP;
	}
}
