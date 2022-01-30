/// @description Start enemy variables
hp = 10;

hsp = 0;
vsp = 0;
grv = 0.5;
walksp = 5;
walkdirection = -1;

image_yscale = -1;
image_alpha = 0;

hitByEnemyAttack = ds_list_create();
canDashAttack = true;

state = UNDERWORLDENEMYSTATE.IDLE;
enum UNDERWORLDENEMYSTATE
{
	WALKING,
	PRIMARYATTACK,
	SECONDARYATTACK,
	CIRCULARATTACK,
	DASHING,
	DEAD,
	IDLE
}

alarm [2] = room_speed*3;