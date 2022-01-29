function DeadPlayerState_Dead() {
	grv = 0.5;
	vsp += grv;
	
	DeadPlayerVerticalCollisionWall()
	y -= vsp;

	mask_index = sDeadPlayerDead;
	sprite_index = sDeadPlayerDead;
	image_speed = 1;

	if (AnimationEnd()) image_speed = 0;

	restartKey = keyboard_check(ord("R"));
	if (restartKey) room_restart();

	closeKey = keyboard_check(vk_escape);
	if (closeKey) game_end();
}
