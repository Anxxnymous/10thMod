/*loadout system by Firewill*/

if (not Local player) Exitwith {};
private _vehicle = vehicle Player;

/* Delete Weapon and Ammo Before */
{_vehicle removeMagazine _x} forEach magazines _vehicle;
{_vehicle removeWeapon _x} forEach weapons _vehicle;

sleep 0.3;

_vehicle vehiclechat "Loading weapon system - please wait";

_vehicle addweapon "OPTRE_M638";
_vehicle addweapon "CMFlareLauncher";
_vehicle addweapon "Laserdesignator_pilotCamera";

_vehicle addmagazine "OPTRE_2000Rnd_20mm_HE";
_vehicle addmagazine "OPTRE_2000Rnd_20mm_HE";
_vehicle addmagazine "300Rnd_CMFlare_Chaff_Magazine";
_vehicle addmagazine "Laserbatteries";
