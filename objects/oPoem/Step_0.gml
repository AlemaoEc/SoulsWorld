/// @description Insert description here
// You can write your code in this editor
image_alpha = lerp(image_alpha,1,0.005);

if (keyboard_check_pressed(vk_space)) {
	if(image_index < 7) {
		image_index += 1;
		image_alpha = 0;
	} else {
		room_goto_next();
	}
}