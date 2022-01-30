/// @description Insert description here
// You can write your code in this editor
switch (state) {
	case GAMESTATE.ALIVEWORLDPLAYING:
		GameState_AliveWorldPlaying();
		break;
	case GAMESTATE.UNDERWORLDPLAYING:
		GameState_UnderWorldPlaying();
		break;
}
if(global.isBossFight) {
	if(audio_is_playing(sMainTheme)) {
		audio_stop_all();
	}
	if(!audio_is_playing(sBossFight)) {
		audio_play_sound(sBossFight, 0, true);	
	}
}