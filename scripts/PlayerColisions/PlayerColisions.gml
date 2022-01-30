// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Horizontal collision
function PlayerHorizontalCollisionPortal(){	
	if (place_meeting(x+hsp,y,oPortal) and
		oPortal.isClosed) {
		while (!place_meeting(x+sign(hsp),y,oPortal)) {
			x += sign(hsp);
		}
		hsp = 0;
	}
}

// Vertical collision
function PlayerVerticalCollisionPortal(){
	if (place_meeting(x,y+vsp,oPortal) and
		oPortal.isClosed) {
		while (!place_meeting(x,y+sign(vsp),oPortal)) {
			y += sign(vsp);
		}
		vsp = 0;
	}		
}

// Horizontal collision
function DeadPlayerHorizontalCollisionPortal(){	
	if (place_meeting(x+hsp,y,oPortal) and
		oPortal.isClosed) {
		while (!place_meeting(x+sign(hsp),y,oPortal)) {
			x += sign(hsp);
		}
		hsp = 0;
	}
}

// Vertical collision
function DeadPlayerVerticalCollisionPortal(){
	if (place_meeting(x,y-vsp,oPortal) and
		oPortal.isClosed) {
		while (!place_meeting(x,y-sign(vsp),oPortal)) {
			y -= sign(vsp);
		}
		vsp = 0;
	}		
}

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

function DeadPlayerHorizontalCollisionWall(){	
	if (place_meeting(x+hsp,y,oWall))
	{
		while (!place_meeting(x+sign(hsp),y,oWall))
		{
			x += sign(hsp);
		}
		hsp = 0;
	}
}

function DeadPlayerVerticalCollisionWall() {
	if (place_meeting(x,y-vsp,oWall))
	{
		while (!place_meeting(x,y-sign(vsp),oWall))
		{
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
	if (place_meeting(x+hsp,y,oEnemy) && oEnemy.state != ENEMYSTATE.DEAD)
	{
		while (!place_meeting(x+sign(hsp),y,oEnemy))
		{
			x += sign(hsp);
		}
		hsp = 0;
	}
}

// Vertical collision with enemy
function PlayerVerticalCollisionEnemy() {
	if (place_meeting(x,y+vsp,oEnemy))
	{
		vsp = -jumpsp/2;
	}	
}

function DeadPlayerHorizontalCollisionEnemy(){
	if (place_meeting(x+hsp,y,oUnderworldEnemy))
	{
		while (!place_meeting(x+sign(hsp),y,oUnderworldEnemy))
		{
			x += sign(hsp);
		}
		hsp = 0;
	}
}

function DeadPlayerVerticalCollisionEnemy() {
	if (place_meeting(x,y-vsp,oUnderworldEnemy))
	{
		vsp = -jumpsp/2;
	}
}