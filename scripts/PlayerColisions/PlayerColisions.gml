// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Horizontal collision
function PlayerHorizontalCollisionWall(){	
	if (place_meeting(x+hsp,y,oWall))
	{
		while (!place_meeting(x+sign(hsp),y,oWall))
		{
			x += sign(hsp);
		}
		hsp = 0;
	}
}

// Vertical collision
function PlayerVerticalCollisionWall(){
	if (place_meeting(x,y+vsp,oWall))
	{
		while (!place_meeting(x,y+sign(vsp),oWall))
		{
			y += sign(vsp);
		}
		vsp = 0;
	}		
}

function DeadPlayerVerticalCollisionWall() {
	show_debug_message("DeadPlayerVerticalCollisionWall");
	if (place_meeting(x,y-vsp,oWall))
	{
		show_debug_message("place_meeting(x,y-vsp,oWall)");
		while (!place_meeting(x,y-sign(vsp),oWall))
		{
			show_debug_message("alterando Y");
			y -= sign(vsp);
		}
		vsp = 0;
	}
}

// Vertical collision
function PlayerVerticalCollisionFloorDamage(){
	if (place_meeting(x,y+vsp,oFloorDamage))
	{
		vsp = -jumpsp/2;
		return true;
	}
	return false;	
}

function DeadPlayerVerticalCollisionFloorDamage(){
	if (place_meeting(x,y-vsp,oFloorDamage))
	{
		vsp = -jumpsp/2;
		return true;
	}
	return false;	
}

// Horizontal collision with enemy
function PlayerHorizontalCollisionEnemy(){
	if (place_meeting(x+hsp,y,oEnemy))
	{
		while (!place_meeting(x+sign(hsp),y,oEnemy))
		{
			x += sign(hsp);
		}
		hsp = 0;
	}
}

// Vertiacal collision with enemy
function PlayerVertialCollisionEnemy() {
	if (place_meeting(x,y+vsp,oEnemy))
	{
		vsp = -jumpsp/2;
	}	
}

function DeadPlayerVertialCollisionEnemy() {
	if (place_meeting(x,y-vsp,oEnemy))
	{
		vsp = -jumpsp/2;
	}
}