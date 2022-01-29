function DeadPlayerState_Attack_Combo() {
	hsp = 0;
	vsp = 0;

	DeadPlayerProcessAttack(sDeadPlayerAttackCombo, sDeadPlayerAttackComboHB);

	// Trigger combo chain
	if (keyAttack) && (image_index > 2)
	{
		state = DEADPLAYERSTATE.ATTACK_SLASH;
	}

	if (AnimationEnd())
	{
		sprite_index = sDeadPlayerIdle;
		state = DEADPLAYERSTATE.FREE;
	}
}
