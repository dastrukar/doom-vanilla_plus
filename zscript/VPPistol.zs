class VPPistol : Pistol replaces Pistol
{
	Default
	{
		Weapon.SlotNumber 2;
		Decal "BulletChip";
	}

	States
	{
		Fire:
			PISG A 4;
			PISG B 0 A_Quake(2, 2, 0, 32, "");
			PISG B 0 A_FirePistol();
			PISG BB 1 A_SetPitch(pitch-0.25);
			PISG B 4;
			PISG CCCC 1 A_SetPitch(pitch+0.125);
			PISG B 5 A_ReFire();
			Goto Ready;
	}
}
