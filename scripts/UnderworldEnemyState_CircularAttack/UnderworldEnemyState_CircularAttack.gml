function UnderworldEnemyState_CircularAttack() {
	// Calculate direction of the player
	if (oDeadPlayer.x < oUnderworldEnemy.x) walkdirection = -1;
	else if (oDeadPlayer.x > oUnderworldEnemy.x) walkdirection = 1;
	else walkdirection = 0;

	if (hsp != 0) image_xscale = sign(hsp);

	image_speed = 1;

	hsp = 6 * walkdirection

	UnderworldEnemyProcessAttack(sUnderworldEnemyNormalThrAttack, sUnderworldEnemyNormalThrAttackHB);

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
		state = UNDERWORLDENEMYSTATE.WALKING;
	}


}
