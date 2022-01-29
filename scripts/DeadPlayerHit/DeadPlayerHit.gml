function DeadPlayerHit(damage) {
	if (state == DEADPLAYERSTATE.DEAD) return;

	hp -= damage;

	if (hp <= 0) state = DEADPLAYERSTATE.DEAD;
	else 
	{
		vsp = -jumpsp/2;
	}


}
