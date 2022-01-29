function UnderworldEnemyState_PrimaryAttack() {
	image_speed = 1;

	hsp = 6 * walkdirection

	UnderworldEnemyProcessAttack(sUnderworldEnemyNormalAttack, sUnderworldEnemyNormalAttackHB);

	// Horizontal collision with wall
	if (place_meeting(x+hsp,y,oWall))
	{
		while (!place_meeting(x+sign(hsp),y,oWall))
		{
			x += sign(hsp);
		}
		hsp = 0;
	}
	x += hsp;

	if (AnimationEnd())
	{
		if (distance_to_object(oDeadPlayer) < 200 && oDeadPlayer.state != DEADPLAYERSTATE.DEAD) state = UNDERWORLDENEMYSTATE.SECONDARYATTACK;
		else state = UNDERWORLDENEMYSTATE.WALKING;
	}


}
