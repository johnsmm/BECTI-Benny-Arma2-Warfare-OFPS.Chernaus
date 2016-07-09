Private ["_ammo","_projectile","_shooter","_vehicle"];


_vehicle = _this select 0;
_ammo = _this select 1;
_shooter = _this select 2;
_msls = ["M_AT10_AT","M_AT11_AT","M_47_AT_EP1","M_AT5_AT","M_AT2_AT","M_AT9_AT","M_AT6_AT","M_TOW_AT","M_TOW2_AT"];

if (alive _vehicle) then {
	_projectile = nearestObject[_shooter, _ammo];
	if(_ammo in _msls)then{
		if {!isNull _projectile} do {
			if((terrainIntersect [getPosATL _projectile, getPosATL _vehicle])) exitWith {
				deletevehicle _projectile;
	    	};
		};
	};
};
exit;


