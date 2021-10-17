class VPBFG9000 : BFG9000 replaces BFG9000
{
	Default
	{
		Weapon.SlotNumber 7;
	}

	States
	{
		Fire:
			BFGG B 0 A_Quake(1, 10, 0, 64, "");
			BFGG A 20 A_BFGSound();
			BFGG A 10 A_GunFlash();
			BFGG B 0 {
				A_Quake(6, 2, 0, 256, "");
				A_WeaponOffset(0, 50);
				A_FireBFG();
			}
			BFGG B 1 A_SetPitch(pitch-3);
			BFGG B 0 A_WeaponOffset(0, 40);
			BFGG BB 1 A_SetPitch(pitch+0.45);
			BFGG B 0 A_WeaponOffset();
			BFGG BBBBBBB 1 A_SetPitch(pitch+0.3);
			BFGG B 4;
			BFGG A 20 A_ReFire();
			Goto Ready;
	}
}

class VPBFGBall : BFGBall
{
	States
	{
		Death:
			BFS1 AB 8 Bright;
			BFE1 C 8 Bright A_BFGSpray();
			BFE1 DEF 8 Bright;
			Stop;
	}
}
