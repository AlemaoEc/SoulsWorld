function UnderworldEnemyState_Walking() {
	walksp = 5;

	vsp += grv;

	while (!place_meeting(x,y-1, oWall)) {
		y -= 1;
	}

	// Calculate direction of the player
	if (oDeadPlayer.x < oUnderworldEnemy.x) walkdirection = -1;
	else if (oDeadPlayer.x > oUnderworldEnemy.x) walkdirection = 1;
	else walkdirection = 0;

	hsp = walksp * walkdirection;

	// Horizontal collision with wall
	if (place_meeting(x+hsp,y,oWall))
	{
		while (!place_meeting(x+sign(hsp),y,oWall))
		{
			x += sign(hsp);
		}
		hsp = 0;
		walkdirection *= -1;
	}
	x += hsp;

	// Vertical collision with wall
	if (place_meeting(x,y-vsp,oWall))
	{
		while (!place_meeting(x,y-sign(vsp),oWall))
		{
			y -= sign(vsp);
		}
		vsp = 0;
	}
	y -= vsp;

	// Animation
	image_speed = 2;
	sprite_index = (hsp == 0)? sUnderworldEnemyIdle : sUnderworldEnemyRun;

	if (hsp != 0) image_xscale = sign(hsp);

	// make the dash attack if the player is closer than 400
	if (distance_to_object(oDeadPlayer) < 400 && canDashAttack && oDeadPlayer.state != DEADPLAYERSTATE.DEAD) 
		state = UNDERWORLDENEMYSTATE.DASHING;

	// make the primary attack if the player is closer than 200
	if (distance_to_object(oDeadPlayer) < 200 && oDeadPlayer.state != DEADPLAYERSTATE.DEAD)
		state = UNDERWORLDENEMYSTATE.PRIMARYATTACK;
	
	// make nothing if the player is dead
	if (oDeadPlayer.state = DEADPLAYERSTATE.DEAD) state = UNDERWORLDENEMYSTATE.IDLE;
}
