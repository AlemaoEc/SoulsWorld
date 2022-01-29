// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Jump(){
	//Jump
	vsp += grv;
	if(place_meeting(x,y+1,oWall))
	{
		vsp = -jumpsp;
	}
	
	PlayerVerticalCollisionWall();
	PlayerVertialCollisionEnemy();
	y += vsp;
	
	if(place_meeting(x,y+1,oWall)) state = PLAYERSTATE.FREE;
	
	PlayerState_Free()
}