function PlayerState_Dead() {
	grv = 0.5;
	vsp += grv;
	
	// Vertical collision with wall
	PlayerVerticalCollisionWall()
	y += vsp;

	mask_index = sPlayerDead;
	sprite_index = sPlayerDead;
	image_speed = 1;

	if (AnimationEnd()) image_speed = 0;

	
	global.alivePlayer = false;
	restartKey = keyboard_check(ord("R"));
	if (restartKey) state = PLAYERSTATE.REVIVE;
	closeKey = keyboard_check(vk_escape);
	if (closeKey) game_end();
}
