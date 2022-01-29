/// @description Core enemy logic
grv = 0.5;
switch (state)
{
	case UNDERWORLDENEMYSTATE.WALKING: 
		UnderworldEnemyState_Walking();
		break;
	case UNDERWORLDENEMYSTATE.PRIMARYATTACK:
		UnderworldEnemyState_PrimaryAttack();
		break;
	case UNDERWORLDENEMYSTATE.SECONDARYATTACK:
		UnderworldEnemyState_SecondaryAttack();
		break;
	case UNDERWORLDENEMYSTATE.CIRCULARATTACK:
		UnderworldEnemyState_CircularAttack();
		break;
	case UNDERWORLDENEMYSTATE.DASHING:
		UnderworldEnemyState_Dash();
		break;
	case UNDERWORLDENEMYSTATE.DEAD:
		UnderworldEnemyState_Dead();
		break;
	case UNDERWORLDENEMYSTATE.IDLE:
		UnderworldEnemyState_Idle();
		break;
}