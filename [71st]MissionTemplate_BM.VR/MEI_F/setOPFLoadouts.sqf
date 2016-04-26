// compile opfor loadouts
_officer = compile preprocessFileLineNumbers "MEI_F\MEI_LER.sqf";
_ldr = compile preprocessFileLineNumbers "MEI_F\MEI_LER.sqf";
_medic = compile preprocessFileLineNumbers "MEI_F\MEI_R.sqf";
_saw = compile preprocessFileLineNumbers "MEI_F\MEI_MG.sqf";
_at = compile preprocessFileLineNumbers "MEI_F\MEI_R_AT.sqf";
_sniper = compile preprocessFileLineNumbers "MEI_F\MEI_DM.sqf";
_aar = compile preprocessFileLineNumbers "MEI_F\MEI_ASST_MG.sqf";
_aat = compile preprocessFileLineNumbers "MEI_F\MEI_ASST_AT.sqf";
_aa = compile preprocessFileLineNumbers "MEI_F\MEI_R_AA.sqf";
_aaa = compile preprocessFileLineNumbers "MEI_F\MEI_ASST_AA.sqf";
_gl = compile preprocessFileLineNumbers "MEI_F\MEI_GL.sqf";
_surv = compile preprocessFileLineNumbers "MEI_f\MEI_SURV.sqf";

// compile civilian loadouts
_civ = compile preprocessFileLineNumbers "MEI_F\MEI_CIV.sqf";

//TODO: BLUFOR loadouts



{
	if (local _x) then{
		_hasGear = _x getVariable ["guy_hasGear", false];
		if !(_hasGear) then {
			_x setVariable ["guy_hasGear", true];
			_xType = typeOf _x;
				switch (_xType) do {
					// assign opfor loadouts
					case "O_officer_F": {_x call _officer};
					case "O_Soldier_SL_F": {_x call _ldr};
					case "O_Soldier_GL_F": {_x call _gl};
					case "O_medic_F": {_x call _medic};
					case "O_engineer_F": {_x call _at};
					case "O_Soldier_TL_F": {_x call _ldr};
					case "O_Soldier_AR_F": {_x call _saw};
					case "O_Soldier_A_F": {_x call _aar};
					case "O_Soldier_LAT_F": {_x call _at};
					case "O_Soldier_AT_F": {_x call _at};
					case "O_HeavyGunner_F": {_x call _saw};
					case "O_soldier_M_F": {_x call _sniper};
					case "O_sniper_F": {_x call _sniper};
					case "O_spotter_F": {_x call _medic};
					case "O_Soldier_F": {_x call _medic};
					case "O_Soldier_AAR_F": {_x call _aar};
					case "O_Sharpshooter_F": {_x call _sniper};
					case "O_Soldier_AA_F": {_x call _aa};
					case "O_Soldier_AAA_F": {_x call _aaa};
					case "O_Soldier_AAT_F": {_x call _aat};
					case "o_survivor_F": {_x call _surv};

					// assign civilian loadout
					case "C_man_1": {_x call _civ};

					// assign AAF survivor with civilian gear
					case "i_survivor_F": {_x call _civ};
				};
			};
		};
} forEach allUnits;
