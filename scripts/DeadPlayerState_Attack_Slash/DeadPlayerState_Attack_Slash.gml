function DeadPlayerState_Attack_Slash() {
	hsp = 0;
	vsp = 0;

	DeadPlayerProcessAttack(sDeadPlayerAttackSlash, sDeadPlayerAttackSlashHB);

	// Trigger combo chain
	if (keyAttack) && (image_index > 2)
	{
		state = DEADPLAYERSTATE.ATTACK_COMBO;
	}

	if (AnimationEnd())
	{
		sprite_index = sDeadPlayerIdle;
		state = DEADPLAYERSTATE.FREE;
	}
}
