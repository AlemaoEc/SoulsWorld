// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GameState_AliveWorldPlaying(){
	if (!global.alivePlayer) return;
	
	if (oPlayer.state == PLAYERSTATE.DEAD && !oPlayer.isResurrecting) {
		global.lastAliveYPosition = oPlayer.y;
		global.lastAliveXPosition = oPlayer.x;
		
		alarm[0] = room_speed*1;
		
		state = GAMESTATE.UNDERWORLDPLAYING;
	}
}