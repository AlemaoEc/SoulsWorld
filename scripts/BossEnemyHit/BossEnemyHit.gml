function BossEnemyHit(argument0) {
	if (state == BOSSENEMYSTATE.DEAD) return;

	var _damage = argument0;

	hp -= _damage;

	if (hp <= 0) state = BOSSENEMYSTATE.DEAD;
}
