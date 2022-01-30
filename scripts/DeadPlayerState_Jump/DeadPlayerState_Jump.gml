// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DeadPlayerState_Jump(){
	//Jump
	vsp += grv;
	
	//VSP > -10 is when player coming out of the ground
	show_debug_message("Can jump?");
	show_debug_message(jumps);
	show_debug_message(key_jump);
	if(
	  (jumps > 0 and key_jump) or
	  (key_jump and jumps >= 0 and vsp > -10)
	) {
		vsp = -jumpsp;
		jumps -= 1;
	}
	
	DeadPlayerVerticalCollisionPortal();
	DeadPlayerVerticalCollisionWall();
	DeadPlayerVerticalCollisionEnemy();
	y -= vsp;
	
	if(place_meeting(x,y-1,oWall)){
		state = DEADPLAYERSTATE.FREE;
	}
	
	DeadPlayerState_Free()
}