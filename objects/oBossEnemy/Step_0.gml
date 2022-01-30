/// @description Core enemy logic
grv = 0.5;
show_debug_message(hp)
switch (state)
{
	case BOSSENEMYSTATE.WALKING: 
		BossEnemyState_Walking();
		break;
	case BOSSENEMYSTATE.PRIMARYATTACK:
		BossEnemyState_PrimaryAttack();
		break;
	case BOSSENEMYSTATE.DASHING:
		BossEnemyState_Dash();
		break;
	case BOSSENEMYSTATE.DEAD:
		BossEnemyState_Dead();
		break;
	case BOSSENEMYSTATE.IDLE:
		BossEnemyState_Idle();
		break;
}