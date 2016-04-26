

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
for "_i" from 1 to 3 do {_this addItemToUniform "rhs_30Rnd_762x39mm";};
for "_i" from 1 to 2 do {_this addItemToUniform "SmokeShell";};
_this addVest selectRandom ["V_BandollierB_oli", "V_BandollierB_khk", "TRYK_LOC_AK_chestrig_TAN", "TRYK_LOC_AK_chestrig_OD", "V_HarnessO_brn", "TRYK_V_harnes_od_L"];
_this addItemToVest "rhs_30Rnd_762x39mm";
for "_i" from 1 to 3 do {_this addItemToVest "rhs_30Rnd_762x39mm_U";};
for "_i" from 1 to 3 do {_this addItemToVest "rhs_30Rnd_762x39mm_tracer";};
for "_i" from 1 to 2 do {_this addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_this addItemToVest "MiniGrenade";};
_this addBackpack "rhs_rpg_empty";
for "_i" from 1 to 3 do {_this addItemToBackpack "rhs_rpg7_PG7VL_mag";};
comment "Add weapons";
_this addWeapon "rhs_weap_akms";

comment "Add items";
_this linkItem "ItemMap";

comment "Set identity";
_this setFace selectRandom ["PersianHead_A3_02", "PersianHead_A3_03", "PersianHead_A3_01"];
_this setSpeaker selectRandom ["Male01PER", "Male02PER", "Male03PER"];
