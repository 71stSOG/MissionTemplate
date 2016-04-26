
comment "Remove existing items";
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeBackpack _this;
removeHeadgear _this;
removeGoggles _this;

comment "Add containers";
_this forceAddUniform selectRandom ["TRYK_ZARATAKI3", "TRYK_ZARATAKI2", "TRYK_ZARATAKI", "rhs_chdkz_uniform_3", "rhs_chdkz_uniform_2"];
for "_i" from 1 to 2 do {_this addItemToUniform "MiniGrenade";};
for "_i" from 1 to 2 do {_this addItemToUniform "SmokeShell";};
_this addVest selectRandom ["V_BandollierB_oli", "V_BandollierB_khk", "TRYK_LOC_AK_chestrig_TAN", "TRYK_LOC_AK_chestrig_OD", "V_HarnessO_brn", "TRYK_V_harnes_od_L"];
_this addItemToVest "rhs_100Rnd_762x54mmR";
_this addItemToVest "rhs_100Rnd_762x54mmR_green";
_this addBackpack selectRandom ["rhs_sidor", "rhs_assault_umbts"];
for "_i" from 1 to 3 do {_this addItemToBackpack "rhs_100Rnd_762x54mmR_green";};
_this addHeadgear selectRandom ["TRYK_H_pakol2",
"TRYK_H_wig",
"TRYK_H_woolhat_cu",
"TRYK_H_woolhat_br",
"TRYK_H_woolhat",
"H_Shemag_olive",
"H_ShemagOpen_tan",
"H_ShemagOpen_khk",
"H_Beret_blk",
"rhs_beanie",
"rhs_beanie_green",
"H_Bandanna_cbr",
"H_Bandanna_blu",
"H_Bandanna_gry",
"H_Bandanna_khk",
"H_Bandanna_sgg",
"H_Bandanna_sand"];
_this addGoggles selectRandom ["TRYK_Beard_Gr",
"TRYK_Beard_BW",
"TRYK_Beard_BW3",
"TRYK_Beard_Gr3",
"TRYK_Beard_BW4",
"TRYK_Beard_Gr4",
"TRYK_Beard_BW2",
"TRYK_Beard_Gr2",
"TRYK_Shemagh_mesh",
"TRYK_Shemagh_G",
"TRYK_Shemagh",
"TRYK_Shemagh_WH"];
comment "Add weapons";
_this addWeapon "rhs_weap_pkm";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";

comment "Set identity";
_this setFace "PersianHead_A3_02";
_this setSpeaker "Male02PER";
