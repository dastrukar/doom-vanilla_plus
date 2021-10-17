class VPSuperShotgun : SuperShotgun replaces SuperShotgun
{
	Default
	{
		Weapon.SlotNumber 3;
		Decal "BulletChip";
	}

	States
	{
		Fire:
			SHT2 A 3;
			SHT2 A 0 {
				A_WeaponOffset(0, 50);
				A_Quake(5, 4, 0, 64, "");
				A_FireShotgun2();
			}
			SHT2 A 1 A_SetPitch(pitch-2);
			SHT2 A 0 A_WeaponOffset(0, 40);
			SHT2 A 1 A_SetPitch(pitch+0.5);
			SHT2 A 0 A_WeaponOffset();
			SHT2 AAA 1 A_SetPitch(pitch+0.5);
			SHT2 A 2;
			SHT2 B 7;
			SHT2 C 7 A_CheckReload();
			SHT2 D 7 A_OpenShotgun2();
			SHT2 E 7;
			SHT2 F 7 A_LoadShotgun2();
			SHT2 G 6;
			SHT2 H 6 A_CloseShotgun2();
			SHT2 A 5 A_ReFire();
			Goto Ready;
	}
}
