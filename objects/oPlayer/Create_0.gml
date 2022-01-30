/// @description Establish some key variables

room_speed = 60;

hsp = 0;
vsp = 0;
grv = 0.5;
walksp = 8;
jumpsp = 17;
hp = 2;
hasKey = false;

// Adding state machine
state = PLAYERSTATE.DEAD;
hitByAttack = ds_list_create();

enum PLAYERSTATE
{
	FREE,
	JUMP,
	ATTACK_SLASH,
	ATTACK_COMBO,
	AIR_ATTACK,
	DEAD,
	REVIVE
}

alreadyAirAttacked = false;
isResurrecting = false;