
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
_this forceAddUniform selectRandom ["TRYK_ZARATAKI3", "TRYK_ZARATAKI2", "TRYK_ZARATAKI"];
_this addHeadgear selectRandom ["TRYK_H_pakol2",
"TRYK_H_wig",
"TRYK_H_woolhat_cu",
"TRYK_H_woolhat_br",
"TRYK_H_woolhat",
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

comment "Set identity";
_this setFace selectRandom ["PersianHead_A3_02", "PersianHead_A3_03", "PersianHead_A3_01"];
_this setSpeaker selectRandom ["Male01PER", "Male02PER", "Male03PER"];
