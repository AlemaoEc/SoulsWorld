/// @description Insert description here
// You can write your code in this editor
if(global.leverIntereation and
   (distance_to_object(oPlayer) < 1280) or
   (distance_to_object(oDeadPlayer) < 1280)
) {
	isClosed = false;
	global.leverIntereation = false;
}

if(isClosed) {
	image_index = 0;
} else {
	image_index = 1;
}

