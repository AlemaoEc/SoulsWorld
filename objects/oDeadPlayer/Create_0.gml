/// @description Insert description here
// You can write your code in this editor
MAX_JUMPS = 2;


hsp = 0;
vsp = 0;
grv = 0.5;
walksp = 8;
jumpsp = 15;
hp = 1;
jumps = 0;

image_yscale = -1;

// Adding state machine
state = DEADPLAYERSTATE.DEAD;
hitByAttack = ds_list_create();

enum DEADPLAYERSTATE
{
	FREE,
	JUMP,
	ATTACK_SLASH,
	DEAD,
	REVIVE
}

isResurrecting = false;
alreadyDoubleJumped= false;