#include "\ML_Functions\ML_Macros.h"

private["_player"];
_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

//removeAllWeapons _player;

switch (true) do{
	case isCop: {
		/*_player addWeapon "ML_Weapon_Revolver"; 
		_player addMagazines ["6Rnd_45ACP_Cylinder", 6];*/
	};
	case isCiv: {
	};
	case isIns: {
	};
};