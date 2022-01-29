// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DeadPlayerState_Jump(){
	//Jump
	show_debug_message("Pulo dead")
	vsp += grv;
	if(place_meeting(x,y-1,oWall))
	{
		vsp = -jumpsp;
	}
	
	DeadPlayerVerticalCollisionWall();
	DeadPlayerVertialCollisionEnemy();
	y -= vsp;
	
	if(place_meeting(x,y-1,oWall)){
		state = DEADPLAYERSTATE.FREE;
	}
	
	DeadPlayerState_Free()
}