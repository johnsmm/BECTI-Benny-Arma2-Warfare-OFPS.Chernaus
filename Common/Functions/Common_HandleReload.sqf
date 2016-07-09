private ["_unit","_weapon","_reduction","_affected"];


_unit = _this select 0;
_weapon = currentMuzzle (gunner (vehicle _unit));
_reduction = 1;
_affected = ["AT5LauncherSingle","M242BC","M242"];

if !(_weapon in _affected) exitWith {};

switch (_weapon) do {
case ("AT5LauncherSingle"): {_reduction = 0.3};
case ("M242BC"): {_reduction = 0.5};
case ("M242"): {_reduction = 0.5};
};

(vehicle _unit) setWeaponReloadingTime [gunner ( vehicle _unit), _weapon, _reduction];


