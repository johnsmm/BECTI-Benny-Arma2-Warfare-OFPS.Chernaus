Private ["_lock","_position","_side","_type","_vehicle"];
_vehicle = _this select 0;
_type = typeof _vehicle;

switch (_type) do {
	case "M2A2_EP1": {
	_vehicle setVehicleInit "this setObjectTexture [0,""base_co.paa""]";
	_vehicle setVehicleInit "this setObjectTexture [1,""a3_co.paa""]";
	_vehicle setVehicleInit "this setObjectTexture [2,""ultralp_co.paa""]";
	_vehicle setVehicleInit "this setObjectTexture [3,""base_co.paa""]";
	_vehicle setVehicleInit "this setObjectTexture [4,""base_co.paa""]";

	_rearmor =
  {
   _ammo = _this select 4;
   _result = 0;
   switch (_ammo) do
    {
	case "R_RPG18_AT" :{_dam=_this select 2; _p=-25; _result=(_dam/100)*(100-_p);};
	case "R_PG9_AT" :{_dam=_this select 2; _p=-25; _result=(_dam/100)*(100-_p);};
	case "R_PG7VL_AT" :{_dam=_this select 2; _p=-25; _result=(_dam/100)*(100-_p);};
	case "R_M136_AT" :{_dam=_this select 2; _p=-25; _result=(_dam/100)*(100-_p);};
	case "M_47_AT_EP1" :{_dam=_this select 2; _p=-25; _result=(_dam/100)*(100-_p);};
	case "Sh_85_AP" :{_dam=_this select 2; _p=-15; _result=(_dam/100)*(100-_p);};
	case "Sh_100_HEAT" :{_dam=_this select 2; _p=-15; _result=(_dam/100)*(100-_p);};
     default {_result = _this select 2;};
    };
   _result
  };
  _vehicle addeventhandler ["HandleDamage",format ["_this Call %1", _rearmor]];
	};

	case "2S6M_Tunguska":{

	// _vehicle call Compile preprocessFile "WASP\Engines\EngineOn.sqf";
	};
	case "M2A3_EP1": {
	_vehicle setVehicleInit "this setObjectTexture [0,""base_co.paa""]";
	_vehicle setVehicleInit "this setObjectTexture [1,""a3_co.paa""]";
	_vehicle setVehicleInit "this setObjectTexture [2,""ultralp_co.paa""]";
	};
	case "M6_EP1":{
	_vehicle setVehicleInit "this setObjectTexture [0,""base_co.paa""]";
	_vehicle setVehicleInit "this setObjectTexture [1,""a3_co.paa""]";
	_vehicle setVehicleInit "this setObjectTexture [2,""ultralp_co.paa""]";
	_vehicle setVehicleInit "this setObjectTexture [3,""base_co.paa""]";
	// _vehicle call Compile preprocessFile "WASP\Engines\EngineOn.sqf";


	};
	case "M1128_MGS_EP1":{
	_vehicle setVehicleInit "this setObjectTexture [0,""stryker_mgs_body1.paa""]";
	_vehicle setVehicleInit "this setObjectTexture [1,""stryker_body2.paa""]";
	_vehicle setVehicleInit "this setObjectTexture [2,""stryker_mgs_1.paa""]";
	};
	case "M1129_MC_EP1":{
	_vehicle setVehicleInit "this setObjectTexture [0,""stryker_mgs_body1.paa""]";
	_vehicle setVehicleInit "this setObjectTexture [1,""stryker_body2.paa""]";
	};
	case "M1135_ATGMV_EP1":{
	_vehicle setVehicleInit "this setObjectTexture [0,""stryker_mgs_body1.paa""]";
	_vehicle setVehicleInit "this setObjectTexture [1,""stryker_body2.paa""]";
	};
	case "M1126_ICV_mk19_EP1":{
	_vehicle setVehicleInit "this setObjectTexture [0,""stryker_mgs_body1.paa""]";
	_vehicle setVehicleInit "this setObjectTexture [1,""stryker_body2.paa""]";
	};
	case "M1126_ICV_M2_EP1":{
	_vehicle setVehicleInit "this setObjectTexture [0,""stryker_mgs_body1.paa""]";
	_vehicle setVehicleInit "this setObjectTexture [1,""stryker_body2.paa""]";
	};
	case "HMMWV_M1151_M2_DES_EP1":{
	_vehicle setVehicleInit "this setObjectTexture [0,""base_3.paa""]";
	_vehicle setVehicleInit "this setObjectTexture [1,""base_2.paa""]";
	_vehicle setVehicleInit "this setObjectTexture [2,""base_0.paa""]";
	_vehicle setVehicleInit "this setObjectTexture [3,""hmmwv_gpk_tower.paa""]";
	};
	case "HMMWV_M998A2_SOV_DES_EP1":{
	_vehicle setVehicleInit "this setObjectTexture [0,""base_3.paa""]";
	_vehicle setVehicleInit "this setObjectTexture [1,""base_2.paa""]";
	_vehicle setVehicleInit "this setObjectTexture [2,""base_0.paa""]";
	};
	case "HMMWV_M1035_DES_EP1": {
	_vehicle setVehicleInit "this setObjectTexture [0,""base_3.paa""]";
	_vehicle setVehicleInit "this setObjectTexture [1,""base_2.paa""]";
	_vehicle setVehicleInit "this setObjectTexture [3,""hmmwv_up_1.paa""]";
	};
	case "HMMWV_M998_crows_MK19_DES_EP1":{
	_vehicle setVehicleInit "this setObjectTexture [0,""base_3.paa""]";
	_vehicle setVehicleInit "this setObjectTexture [1,""base_2.paa""]";
	_vehicle setVehicleInit "this setObjectTexture [2,""base_0.paa""]";
	};
	case "HMMWV_M998_crows_M2_DES_EP1":{
	_vehicle setVehicleInit "this setObjectTexture [0,""base_3.paa""]";
	_vehicle setVehicleInit "this setObjectTexture [1,""base_2.paa""]";
	_vehicle setVehicleInit "this setObjectTexture [2,""base_0.paa""]";
	};
	case "M113Ambul_TK_EP1":{
	_vehicle setVehicleInit "this setObjectTexture [0,""m113a3_01.paa""]";
	};
	case "M113_TK_EP1":{
	_vehicle setVehicleInit "this setObjectTexture [0,""m113a3_01.paa""]";
	};
//	case "T55_TK_EP1":{
//	_vehicle setVehicleInit "this setObjectTexture [0,""t55_body_tkg_co.paa""]";
//	_vehicle setVehicleInit "this setObjectTexture [1,""t55_tower_tkg_co.paa""]";
//	};
	case "Mi24_D_TK_EP1":{
	_vehicle setVehicleInit "this setObjectTexture [0,""\ca\air2\mi35\data\mi24p_001_co.paa""]";
	_vehicle setVehicleInit "this setObjectTexture [1,""\ca\air2\mi35\data\mi24p_002_co.paa""]";

	_rearmor =
  {
   _ammo = _this select 4;
   _result = 0;
   switch (_ammo) do
    {
	case "B_762x51_Ball" :{_dam=_this select 2; _p=99; _result=(_dam/100)*(100-_p);};
	case "B_762x54_Ball" :{_dam=_this select 2; _p=99; _result=(_dam/100)*(100-_p);};
	case "B_762x51_noTracer" :{_dam=_this select 2; _p=99; _result=(_dam/100)*(100-_p);};
	case "B_762x54_noTracer" :{_dam=_this select 2; _p=99; _result=(_dam/100)*(100-_p);};
	case "B_127x107_Ball" :{_dam=_this select 2; _p=99; _result=(_dam/100)*(100-_p);};
	case "B_127x108_Ball" :{_dam=_this select 2; _p=99; _result=(_dam/100)*(100-_p);};
	case "B_127x99_Ball_noTracer" :{_dam=_this select 2; _p=99; _result=(_dam/100)*(100-_p);};
	case "B_127x99_Ball_noTracer_BAF" :{_dam=_this select 2; _p=99; _result=(_dam/100)*(100-_p);};
	case "B_145x115_AP" :{_dam=_this select 2; _p=99; _result=(_dam/100)*(100-_p);};
	case "B_20mm_AA" :{_dam=_this select 2; _p=65; _result=(_dam/100)*(100-_p);};
	case "B_20mm_AP" :{_dam=_this select 2; _p=65; _result=(_dam/100)*(100-_p);};
	case "B_23mm_AA" :{_dam=_this select 2; _p=65; _result=(_dam/100)*(100-_p);};
	case "B_25mm_APDS" :{_dam=_this select 2; _p=65; _result=(_dam/100)*(100-_p);};
	case "B_25mm_HE" :{_dam=_this select 2; _p=65; _result=(_dam/100)*(100-_p);};
	case "B_25mm_HEI" :{_dam=_this select 2; _p=65; _result=(_dam/100)*(100-_p);};
	case "B_30mm_AA" :{_dam=_this select 2; _p=65; _result=(_dam/100)*(100-_p);};
	case "B_30mm_AP" :{_dam=_this select 2; _p=65; _result=(_dam/100)*(100-_p);};
	case "B_30mm_HE" :{_dam=_this select 2; _p=65; _result=(_dam/100)*(100-_p);};
	case "B_30x113mm_M789_HEDP" :{_dam=_this select 2; _p=65; _result=(_dam/100)*(100-_p);};

    default {_result = _this select 2;};
    };
   _result
  };
  _vehicle addeventhandler ["HandleDamage",format ["_this Call %1", _rearmor]];
	};

	case "Mi24_V":{

	_rearmor =
  {
   _ammo = _this select 4;
   _result = 0;
   switch (_ammo) do
    {
	case "B_762x51_Ball" :{_dam=_this select 2; _p=99; _result=(_dam/100)*(100-_p);};
	case "B_762x54_Ball" :{_dam=_this select 2; _p=99; _result=(_dam/100)*(100-_p);};
	case "B_762x51_noTracer" :{_dam=_this select 2; _p=99; _result=(_dam/100)*(100-_p);};
	case "B_762x54_noTracer" :{_dam=_this select 2; _p=99; _result=(_dam/100)*(100-_p);};
	case "B_127x107_Ball" :{_dam=_this select 2; _p=99; _result=(_dam/100)*(100-_p);};
	case "B_127x108_Ball" :{_dam=_this select 2; _p=99; _result=(_dam/100)*(100-_p);};
	case "B_127x99_Ball_noTracer" :{_dam=_this select 2; _p=99; _result=(_dam/100)*(100-_p);};
	case "B_127x99_Ball_noTracer_BAF" :{_dam=_this select 2; _p=99; _result=(_dam/100)*(100-_p);};
	case "B_145x115_AP" :{_dam=_this select 2; _p=99; _result=(_dam/100)*(100-_p);};
	case "B_20mm_AA" :{_dam=_this select 2; _p=65; _result=(_dam/100)*(100-_p);};
	case "B_20mm_AP" :{_dam=_this select 2; _p=65; _result=(_dam/100)*(100-_p);};
	case "B_23mm_AA" :{_dam=_this select 2; _p=65; _result=(_dam/100)*(100-_p);};
	case "B_25mm_APDS" :{_dam=_this select 2; _p=65; _result=(_dam/100)*(100-_p);};
	case "B_25mm_HE" :{_dam=_this select 2; _p=65; _result=(_dam/100)*(100-_p);};
	case "B_25mm_HEI" :{_dam=_this select 2; _p=65; _result=(_dam/100)*(100-_p);};
	case "B_30mm_AA" :{_dam=_this select 2; _p=65; _result=(_dam/100)*(100-_p);};
	case "B_30mm_AP" :{_dam=_this select 2; _p=65; _result=(_dam/100)*(100-_p);};
	case "B_30mm_HE" :{_dam=_this select 2; _p=65; _result=(_dam/100)*(100-_p);};
	case "B_30x113mm_M789_HEDP" :{_dam=_this select 2; _p=65; _result=(_dam/100)*(100-_p);};

    default {_result = _this select 2;};
    };
   _result
  };
  _vehicle addeventhandler ["HandleDamage",format ["_this Call %1", _rearmor]];
	};

	case "Mi24_P":{

	_rearmor =
  {
   _ammo = _this select 4;
   _result = 0;
   switch (_ammo) do
    {
	case "B_762x51_Ball" :{_dam=_this select 2; _p=99; _result=(_dam/100)*(100-_p);};
	case "B_762x54_Ball" :{_dam=_this select 2; _p=99; _result=(_dam/100)*(100-_p);};
	case "B_762x51_noTracer" :{_dam=_this select 2; _p=99; _result=(_dam/100)*(100-_p);};
	case "B_762x54_noTracer" :{_dam=_this select 2; _p=99; _result=(_dam/100)*(100-_p);};
	case "B_127x107_Ball" :{_dam=_this select 2; _p=99; _result=(_dam/100)*(100-_p);};
	case "B_127x108_Ball" :{_dam=_this select 2; _p=99; _result=(_dam/100)*(100-_p);};
	case "B_127x99_Ball_noTracer" :{_dam=_this select 2; _p=99; _result=(_dam/100)*(100-_p);};
	case "B_127x99_Ball_noTracer_BAF" :{_dam=_this select 2; _p=99; _result=(_dam/100)*(100-_p);};
	case "B_145x115_AP" :{_dam=_this select 2; _p=99; _result=(_dam/100)*(100-_p);};
	case "B_20mm_AA" :{_dam=_this select 2; _p=65; _result=(_dam/100)*(100-_p);};
	case "B_20mm_AP" :{_dam=_this select 2; _p=65; _result=(_dam/100)*(100-_p);};
	case "B_23mm_AA" :{_dam=_this select 2; _p=65; _result=(_dam/100)*(100-_p);};
	case "B_25mm_APDS" :{_dam=_this select 2; _p=65; _result=(_dam/100)*(100-_p);};
	case "B_25mm_HE" :{_dam=_this select 2; _p=65; _result=(_dam/100)*(100-_p);};
	case "B_25mm_HEI" :{_dam=_this select 2; _p=65; _result=(_dam/100)*(100-_p);};
	case "B_30mm_AA" :{_dam=_this select 2; _p=65; _result=(_dam/100)*(100-_p);};
	case "B_30mm_AP" :{_dam=_this select 2; _p=65; _result=(_dam/100)*(100-_p);};
	case "B_30mm_HE" :{_dam=_this select 2; _p=65; _result=(_dam/100)*(100-_p);};
	case "B_30x113mm_M789_HEDP" :{_dam=_this select 2; _p=65; _result=(_dam/100)*(100-_p);};

    default {_result = _this select 2;};
    };
   _result
  };
  _vehicle addeventhandler ["HandleDamage",format ["_this Call %1", _rearmor]];
	};

	case "T72_RU":{
	_rearmor =
  {
   _ammo = _this select 4;
   _result = 0;
   switch (_ammo) do
    {
	case "Sh_125_SABOT" :{_dam=_this select 2; _p=20; _result=(_dam/100)*(100-_p);};
	case "Sh_120_SABOT" :{_dam=_this select 2; _p=33; _result=(_dam/100)*(100-_p);};
	case "R_SMAW_HEAA" :{_dam=_this select 2; _p=30; _result=(_dam/100)*(100-_p);};
	case "R_RPG18_AT" :{_dam=_this select 2; _p=18; _result=(_dam/100)*(100-_p);};
	case "R_PG9_AT" :{_dam=_this select 2; _p=20; _result=(_dam/100)*(100-_p);};
	case "R_PG7V_AT" :{_dam=_this select 2; _p=24; _result=(_dam/100)*(100-_p);};
	case "R_PG7VL_AT" :{_dam=_this select 2; _p=21; _result=(_dam/100)*(100-_p);};
	case "R_M136_AT" :{_dam=_this select 2; _p=21; _result=(_dam/100)*(100-_p);};
	case "M_47_AT_EP1" :{_dam=_this select 2; _p=20; _result=(_dam/100)*(100-_p);};
	case "R_MEEWS_HEAT" :{_dam=_this select 2; _p=30; _result=(_dam/100)*(100-_p);};
	case "M_AT13_AT" :{_dam=_this select 2; _p=15; _result=(_dam/100)*(100-_p);};
	case "Sh_85_AP" :{_dam=_this select 2; _p=23; _result=(_dam/100)*(100-_p);};
	case "Sh_100_HEAT" :{_dam=_this select 2; _p=20; _result=(_dam/100)*(100-_p);};
     default {_result = _this select 2;};
    };
   _result
  };
  _vehicle addeventhandler ["HandleDamage",format ["_this Call %1", _rearmor]];
	};

	case "T90":{
	_rearmor =
  {

   _ammo = _this select 4;
   _result = 0;

   switch (_ammo) do
    {
	case "Sh_125_SABOT" :{_dam=_this select 2; _p=3; _result=(_dam/100)*(100-_p);};
	case "Sh_120_SABOT" :{_dam=_this select 2; _p=20; _result=(_dam/100)*(100-_p);};
	case "R_SMAW_HEAA" :{_dam=_this select 2; _p=34; _result=(_dam/100)*(100-_p);};
	case "R_RPG18_AT" :{_dam=_this select 2; _p=25; _result=(_dam/100)*(100-_p);};
	case "R_PG9_AT" :{_dam=_this select 2; _p=27; _result=(_dam/100)*(100-_p);};
	case "R_PG7V_AT" :{_dam=_this select 2; _p=28; _result=(_dam/100)*(100-_p);};
	case "R_PG7VL_AT" :{_dam=_this select 2; _p=27; _result=(_dam/100)*(100-_p);};
	case "R_M136_AT" :{_dam=_this select 2; _p=27; _result=(_dam/100)*(100-_p);};
	case "M_47_AT_EP1" :{_dam=_this select 2; _p=23; _result=(_dam/100)*(100-_p);};
	case "R_MEEWS_HEAT" :{_dam=_this select 2; _p=34; _result=(_dam/100)*(100-_p);};
	case "M_AT13_AT" :{_dam=_this select 2; _p=15; _result=(_dam/100)*(100-_p);};
	case "M_TOW_AT" :{_dam=_this select 2; _p=16; _result=(_dam/100)*(100-_p);};
	case "Sh_85_AP" :{_dam=_this select 2; _p=27; _result=(_dam/100)*(100-_p);};
	case "Sh_100_HEAT" :{_dam=_this select 2; _p=23; _result=(_dam/100)*(100-_p);};
     default {_result = _this select 2;};
    };
   _result
  };

	_vehicle addeventhandler ["HandleDamage",format ["_this Call %1", _rearmor]];
	};

	};
	processinitcommands;

_vehicle