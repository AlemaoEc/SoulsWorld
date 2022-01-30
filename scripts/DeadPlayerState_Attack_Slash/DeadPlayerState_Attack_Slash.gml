function DeadPlayerState_Attack_Slash() {
	hsp = 0;
	vsp = 0;
	
	image_speed = 1;
	
	DeadPlayerProcessAttack(sDeadPlayerAttackSlash, sDeadPlayerAttackSlashHB);

	if (AnimationEnd())
	{
		sprite_index = sDeadPlayerIdle;
		state = DEADPLAYERSTATE.FREE;
	}
}
