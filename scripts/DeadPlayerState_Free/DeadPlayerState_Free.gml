function DeadPlayerState_Free() {
	// Calculate movement
	var _move = key_right - key_left;

	hsp = _move * walksp;

	vsp += grv;

	if(place_meeting(x,y-1,oWall)) and (key_jump)
	{
		vsp = -jumpsp;
	}

	// Horizontal collision with wall
	if (place_meeting(x+hsp,y,oWall))
	{
		while (!place_meeting(x+sign(hsp),y,oWall))
		{
			x += sign(hsp);
		}
		hsp = 0;
	}
	// Horizontal collision with enemy
	if (place_meeting(x+hsp,y,oEnemy))
	{
		while (!place_meeting(x+sign(hsp),y,oEnemy))
		{
			x += sign(hsp);
		}
		hsp = 0;
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
	// Vertical collision with enemy
	if (place_meeting(x,y-vsp,oEnemy))
	{
		vsp = +jumpsp/2;
	}

	y -= vsp;

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
	}

	if (hsp != 0) image_xscale = sign(hsp);

	if (keyAttack && sprite_index != sDeadPlayerAir) state = DEADPLAYERSTATE.ATTACK_SLASH;
	if (keyAttack && sprite_index == sDeadPlayerAir && !alreadyAirAttacked) state = DEADPLAYERSTATE.AIR_ATTACK;
}
