class VPRocketLauncher : RocketLauncher replaces RocketLauncher
{
	Default
	{
		Weapon.SlotNumber 5;
	}

	States
	{
		Fire:
			MISG B 8 A_GunFlash();
			MISG B 0 A_Quake(6, 2, 0, 64, "");
			MISG B 0 A_WeaponOffset(0, 50);
			MISG B 0 A_FireMissile();
			MISG B 1 A_SetPitch(pitch-3);
			MISG B 1 A_SetPitch(pitch+0.5);
			MISG B 0 A_WeaponOffset(0, 40);
			MISG BB 1 A_SetPitch(pitch+0.5);
			MISG B 0 A_WeaponOffset();
			MISG BBB 1 A_SetPitch(pitch+0.5);
			MISG B 5;
			MISG B 0 A_ReFire();
			Goto Ready;
	}
}

class VPRocket : Rocket replaces Rocket
{
	States
	{
		Death:
			MISL B 0 Bright A_Quake(6, 4, 0, 512, "");
			MISL B 8 Bright A_Explode();
			MISL C 6 Bright;
			MISL D 4 Bright;
			Stop;
	}
}
