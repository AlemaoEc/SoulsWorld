/// @description Insert description here
// You can write your code in this editor
// Get player inputs
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D")); ;
key_jump = keyboard_check_pressed(vk_space);
keyAttack = keyboard_check_pressed(ord("H")) || keyboard_check_pressed(ord("Z")); 

switch (state)
{
	case DEADPLAYERSTATE.FREE: 
		DeadPlayerState_Free();
		break;
	case DEADPLAYERSTATE.JUMP:
		DeadPlayerState_Jump();
		break;
	case DEADPLAYERSTATE.ATTACK_SLASH:
		DeadPlayerState_Attack_Slash();
		break;
	case DEADPLAYERSTATE.ATTACK_COMBO:
		DeadPlayerState_Attack_Combo();
		break;
	case DEADPLAYERSTATE.AIR_ATTACK:
		DeadPlayerState_Air_Attack();
		break;
	case DEADPLAYERSTATE.DEAD:
		DeadPlayerState_Dead();
		break;
}