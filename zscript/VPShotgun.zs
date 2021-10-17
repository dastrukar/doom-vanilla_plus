class VPShotgun : Shotgun replaces Shotgun
{
	Default
	{
		Weapon.SlotNumber 3;
		Decal "BulletChip";
	}

	States
	{
		Fire:
			SHTG A 3;
			SHTG A 0 {
				A_WeaponOffset(0, 45);
				A_Quake(4, 3, 0, 32, "");
				A_FireShotgun();
			}
			SHTG A 3 A_SetPitch(pitch-1);
			SHTG A 0 A_WeaponOffset(0, 35);
			SHTG AAAA 1 A_SetPitch(pitch+0.25);
			SHTG BC 5;
			SHTG D 4;
			SHTG CB 5;
			SHTG A 3;
			SHTG A 7 A_ReFire();
			Goto Ready;
	}
}
