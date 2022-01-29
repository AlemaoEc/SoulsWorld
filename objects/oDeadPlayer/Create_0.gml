/// @description Insert description here
// You can write your code in this editor
hsp = 0;
vsp = 0;
grv = 0.5;
walksp = 8;
jumpsp = 15;
hp = 2;

image_yscale = -1;

// Adding state machine
state = DEADPLAYERSTATE.AIR_ATTACK;
hitByAttack = ds_list_create();

enum DEADPLAYERSTATE
{
	FREE,
	ATTACK_SLASH,
	ATTACK_COMBO,
	AIR_ATTACK,
	DEAD
}

alreadyAirAttacked = false;