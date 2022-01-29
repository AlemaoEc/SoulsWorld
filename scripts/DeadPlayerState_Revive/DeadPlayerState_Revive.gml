// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DeadPlayerState_Revive(){
	grv = 0.5;
	vsp += grv;
	
	// Vertical collision with wall
	if (place_meeting(x,y-vsp,oWall))
	{
		while (!place_meeting(x,y+sign(vsp),oWall))
		{
			y -= sign(vsp);
		}
		vsp = 0;
	}
	y -= vsp;

	mask_index = sDeadPlayerRevive;
	sprite_index = sDeadPlayerRevive;
	image_speed = 1;

	if (AnimationEnd()) {
		state = DEADPLAYERSTATE.JUMP;
	}
}