class VPPlasmaRifle : PlasmaRifle replaces PlasmaRifle
{
	Default
	{
		Weapon.SlotNumber 6;
	}

	States
	{
		Fire:
			PLSG A 0 {
				A_Quake(3, 2, 0, 64, "");
				A_WeaponOffset(0, 35);
				A_FirePlasma();
			}
			PLSG A 1 A_SetPitch(pitch+0.5);
			PLSG A 0 A_WeaponOffset();
			PLSG AA 1 A_SetPitch(pitch-0.25);
			PLSG B 20 A_ReFire();
			Goto Ready;
	}
}
