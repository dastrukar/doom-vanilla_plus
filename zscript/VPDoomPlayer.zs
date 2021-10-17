class VPDoomPlayer : DoomPlayer
{
	Default
	{
		Player.StartItem "VPPistol";
		Player.StartItem "VPFist";
		Player.StartItem "Clip", 50;
		Player.WeaponSlot 1, "VPFist", "Chainsaw";
		Player.WeaponSlot 2, "VPPistol";
		Player.WeaponSlot 3, "VPShotgun", "VPSuperShotgun";
		Player.WeaponSlot 4, "VPChaingun";
		Player.WeaponSlot 5, "VPRocketLauncher";
		Player.WeaponSlot 6, "VPPlasamRifle";
		Player.WeaponSlot 7, "VPBFG9000";
	}
}
