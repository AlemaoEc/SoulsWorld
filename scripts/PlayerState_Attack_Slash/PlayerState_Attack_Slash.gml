function PlayerState_Attack_Slash() {
	hsp = 0;
	vsp = 0;

	PlayerProcessAttack(sAttackSlash, sAttackSlashHB);

	// Trigger combo chain
	if (key_attack) && (image_index > 2)
	{
		state = PLAYERSTATE.ATTACK_COMBO;
	}

	if (AnimationEnd())
	{
		sprite_index = sPlayerIdle;
		state = PLAYERSTATE.FREE;
	}
}
