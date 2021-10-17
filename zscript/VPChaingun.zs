class VPChaingun : Chaingun replaces Chaingun
{
	Default
	{
		Weapon.SlotNumber 4;
		Decal "BulletChip";
	}

	States
	{
		Fire:
			CHGG A 0 {
				A_WeaponOffset(0, 35);
				A_Quake(2, 2, 0, 32, "");
				A_GunFlash();
				A_PlaySound("weapons/chngun", CHAN_WEAPON);
				A_FireBullets(5.6, 0, 1, 5, "BulletPuff");
			}
			CHGG A 1 A_SetPitch(pitch-0.5);
			CHGG A 1 A_WeaponOffset();
			CHGG AA 1 A_SetPitch(pitch+0.25);

			CHGG B 0 {
				A_WeaponOffset(0, 35);
				A_Quake(2, 2, 0, 32, "");
				A_PlaySound("weapons/chngun", CHAN_WEAPON);
				A_FireBullets(5.6, 0, 1, 5, "BulletPuff");
			}
			CHGG B 1 A_SetPitch(pitch-0.5);
			CHGG B 1 A_WeaponOffset();
			CHGG BB 1 A_SetPitch(pitch+0.25);

			CHGG B 0 A_ReFire();
			Goto Ready;

		Flash:
			CHGF A 4 Bright A_Light1();
			CHGF B 4 Bright A_Light1();
			Goto LightDone;
	}
}
