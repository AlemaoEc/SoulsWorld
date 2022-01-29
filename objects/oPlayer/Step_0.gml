/// @description Core Player Logic

// Get player inputs
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D")); ;
key_jump = keyboard_check_pressed(vk_space);
key_attack = keyboard_check_pressed(ord("H")) || keyboard_check_pressed(ord("Z")); 

switch (state)
{
	case PLAYERSTATE.FREE: 
		PlayerState_Free();
		break;
	case PLAYERSTATE.JUMP: 
		PlayerState_Jump();
		break;
	case PLAYERSTATE.ATTACK_SLASH:
		PlayerState_Attack_Slash();
		break;
	case PLAYERSTATE.ATTACK_COMBO:
		PlayerState_Attack_Combo();
		break;
	case PLAYERSTATE.AIR_ATTACK:
		PlayerState_Air_Attack();
		break;
	case PLAYERSTATE.DEAD:
		PlayerState_Dead();
		break;
	case PLAYERSTATE.REVIVE:
		PlayerState_Revive();
		break;
}