/// @description Insert description here
// You can write your code in this editor
show_debug_message(global.alivePlayer);
switch (state) {
	case GAMESTATE.ALIVEWORLDPLAYING:
		GameState_AliveWorldPlaying();
		break;
	case GAMESTATE.UNDERWORLDPLAYING:
		GameState_UnderWorldPlaying();
		break;
}