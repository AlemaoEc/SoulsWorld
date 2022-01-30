/// @description Core enemy logic
grv = 0.5;
switch (state)
{
	case ENEMYSTATE.WALKING: 
		EnemyState_Walking();
		break;
	case ENEMYSTATE.DASHING:
		EnemyState_Dash();
		break;
	case ENEMYSTATE.DEAD:
		EnemyState_Dead();
		break;
	case ENEMYSTATE.IDLE:
		EnemyState_Idle();
		break;
}