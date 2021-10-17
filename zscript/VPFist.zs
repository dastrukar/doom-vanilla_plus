class VPFist : Fist
{
	Default
	{
		Weapon.SlotNumber 1;
	}

	States
	{
		Fire:
			PUNG A 1 A_WeaponOffset(10, 40);
			Goto Punch;
		RePunch:
			PUNG B 1 A_WeaponOffset();
		Punch:
			PUNG B 2 A_WeaponOffset();
			PUNG C 1;
			PUNG D 0 A_Quake(3, 2, 0, 16, "");
			PUNG D 9 A_Punch();
			PUNG C 4;
			PUNG B 3 A_ReFire("RePunch");
			PUNG B 1 {
				A_WeaponOffset(-10, 40);
				A_ReFire("RePunch");
			}
			PUNG A 1 {
				A_WeaponOffset(10, 40);
				A_ReFire("RePunch");
			}
			Goto Ready;
	}
}
