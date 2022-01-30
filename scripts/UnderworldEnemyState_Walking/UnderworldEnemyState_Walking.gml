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
	
	if (place_meeting(x+hsp,y,oDeadPlayer))
	{
		while (!place_meeting(x+sign(hsp),y,oDeadPlayer))
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
	image_speed = 1;
	sprite_index = (hsp == 0)? sUnderworldEnemyIdle : sUnderworldEnemyRun;

	if (hsp != 0) image_xscale = -(sign(hsp));

	if(oDeadPlayer.state != DEADPLAYERSTATE.DEAD) {
		// make the dash attack if the player is closer than 400
		if (distance_to_object(oDeadPlayer) < 300 && canDashAttack) 
			state = UNDERWORLDENEMYSTATE.DASHING;
			
		if (distance_to_object(oDeadPlayer) >= 1024) {
			_newPositionX = oDeadPlayer.x+100;
			_newPositionY= oDeadPlayer.y;

			//spawn the enemy
			while(position_meeting(_newPositionX,_newPositionY, oPortal) or
				  position_meeting(_newPositionX,_newPositionY, oWall) or
				  position_meeting(_newPositionX,_newPositionY, oFloorDamage) or
			      position_meeting(_newPositionX,_newPositionY, oDeadPlayer)
			) {
				randomize();
				_newPositionX = oDeadPlayer.x + random_range(-384,384);
			} 
			x = _newPositionX;
			y = _newPositionY;
		}	
	} else {
		state = UNDERWORLDENEMYSTATE.IDLE;
	}
}
