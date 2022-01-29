// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Jump(){
	//Jump
	vsp += grv;
	show_debug_message(grv);
	if(place_meeting(x,y+1,oWall))
	{
		vsp = -jumpsp;
		state = PLAYERSTATE.FREE;
	}
	
	PlayerVerticalCollisionWall();
	PlayerVertialCollisionEnemy();
	y += vsp;
	
	PlayerState_Free()
	if(place_meeting(x,y,oWall))
	{
		state = PLAYERSTATE.FREE;
	}
}