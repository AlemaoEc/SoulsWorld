// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DeadPlayerState_Jump(){
	//Jump
	vsp += grv;
	
	//VSP > -10 is when player coming out of the ground
	if(jumps > 0 or 
	  (key_jump and jumps == 0 and vsp > -10)
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