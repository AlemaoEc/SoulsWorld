function UnderworldEnemyState_SecondaryAttack() {
	// Calculate direction of the player
	if (oDeadPlayer.x < oUnderworldEnemy.x) walkdirection = -1;
	else if (oDeadPlayer.x > oUnderworldEnemy.x) walkdirection = 1;
	else walkdirection = 0;

	if (hsp != 0) image_xscale = sign(hsp);

	image_speed = 1;

	hsp = 6 * walkdirection

	UnderworldEnemyProcessAttack(sUnderworldEnemyNormalSecAttack, sUnderworldEnemyNormalSecAttackHB);

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
		if (distance_to_object(oDeadPlayer) < 200 && oDeadPlayer.state != DEADPLAYERSTATE.DEAD) state = UNDERWORLDENEMYSTATE.CIRCULARATTACK;
		else state = UNDERWORLDENEMYSTATE.WALKING;
	}


}
