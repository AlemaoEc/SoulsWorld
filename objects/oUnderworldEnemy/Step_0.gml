/// @description Core enemy logic
grv = 0.5;

image_alpha = lerp(image_alpha,1,0.005);

switch (state)
{
	case UNDERWORLDENEMYSTATE.WALKING: 
		UnderworldEnemyState_Walking();
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