function PlayerHit(damage) {
	if (state == PLAYERSTATE.DEAD) return;

	hp -= damage;


	if (hp <= 0) state = PLAYERSTATE.DEAD;
	else 
	{
		vsp = -jumpsp/2;
	}


}
