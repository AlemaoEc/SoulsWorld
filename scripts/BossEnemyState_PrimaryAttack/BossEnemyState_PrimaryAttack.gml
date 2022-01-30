function BossEnemyState_PrimaryAttack() {
	image_speed = 1;

	hsp = 6 * walkdirection

	//BossEnemyProcessAttack(sBossEnemyNormalAttack, sBossEnemyNormalAttackHB);

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
		state = ENEMYSTATE.WALKING;
	}


}
