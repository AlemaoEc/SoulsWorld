/// @description Insert description here
// You can write your code in this editor
image_alpha = lerp(image_alpha,1,0.005);

if (keyboard_check_pressed(vk_space)) {
	room_goto_next();
}