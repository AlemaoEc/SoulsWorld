function PlayerState_Attack_Slash() {
	hsp = 0;
	vsp = 0;
	
	image_speed = 1;
	
	PlayerProcessAttack(sAttackSlash, sAttackSlashHB);

	if (AnimationEnd())
	{
		sprite_index = sPlayerIdle;
		state = PLAYERSTATE.FREE;
	}
}
