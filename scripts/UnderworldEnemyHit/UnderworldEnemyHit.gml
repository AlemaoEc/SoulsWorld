function UnderworldEnemyHit(argument0) {
	
	if (state == UNDERWORLDENEMYSTATE.DEAD) return;

	var _damage = argument0;

	hp -= _damage;

	if (hp <= 0) state = UNDERWORLDENEMYSTATE.DEAD;


}
