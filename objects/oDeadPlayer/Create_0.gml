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
state = DEADPLAYERSTATE.DEAD;
hitByAttack = ds_list_create();

enum DEADPLAYERSTATE
{
	FREE,
	JUMP,
	DOUBLE_JUMP,
	ATTACK_SLASH,
	ATTACK_COMBO,
	AIR_ATTACK,
	DEAD,
	REVIVE
}

alreadyAirAttacked = false;