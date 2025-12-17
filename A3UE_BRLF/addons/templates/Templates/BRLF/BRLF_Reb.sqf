private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasHelicopters = "heli" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;
private _hasJets = "jets" in A3A_enabledDLC;
private _hasArtOfWar = "aow" in A3A_enabledDLC;
private _hasKart = "kart" in A3A_enabledDLC;
private _hasGM = "gm" in A3A_enabledDLC;
private _hasCSLA = "csla" in A3A_enabledDLC;
private _hasRF = "rf" in A3A_enabledDLC;
private _hasSOG = "vn" in A3A_enabledDLC;
private _hasSPE = "spe" in A3A_enabledDLC;
private _hasEF = "ef" in A3A_enabledDLC;

#include "..\..\script_component.hpp"

///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "BRLF"] call _fnc_saveToTemplate;
["flag", "Flag_NATO_F"] call _fnc_saveToTemplate;
["flagTexture", QPATHTOFOLDER(Templates\BRLF\flag_brlf.paa)] call _fnc_saveToTemplate;
["flagMarkerType", "marker_brlf"] call _fnc_saveToTemplate;

private _vehiclesBasic = ["BRAF_AM11_Unarmed"];
private _vehiclesLightUnarmed = ["BRAF_LMV_EB","BRAF_AM21_GLO","BRAF_AM21_Opened","I_G_Offroad_01_F"];
private _vehiclesLightArmed = ["BRAF_LMV_EB_RCWS","BRAF_AM11_Armed","I_C_Offroad_02_LMG_F","I_G_Offroad_01_armed_F"];
private _VehTruck = ["BRAF_AM21_Covered","BRAF_Worker_Covered","BRAF_Worker_Cargo","BRAF_AM21_Cargo","I_G_Van_02_transport_F","I_G_Van_02_vehicle_F"];
private _vehiclesAt = ["I_G_Offroad_01_AT_F", "I_C_Offroad_02_AT_F"];
private _vehicleAA = ["CUP_I_Hilux_igla_IND_G_F"];
private _vehiclesBoat = ["braf_voadeira_01","braf_voadeira_02","I_C_Boat_Transport_02_F" ,"I_SDV_01_F" ,"I_Boat_Armed_01_minigun_F","O_Boat_Armed_01_hmg_F"];
private _vehiclePlane = ["braf_A29A","braf_A29B_Jambock"];
private _vehiclesMedical = ["C_Van_02_medevac_F","BRAF_Worker_Health","I_E_Van_02_medevac_F"];
private _vehiclesSupply = ["C_Van_01_box_F"];
private _vehicleCivPlane = ["C_Plane_Civil_01_F","C_Plane_Civil_01_racing_F"];
private _vehiclesCivCar = ["C_Offroad_01_F","C_Hatchback_01_F","C_Hatchback_01_sport_F","C_Offroad_02_unarmed_F","C_SUV_01_F"];
private _CivTruck = ["C_Truck_02_transport_F","C_Van_01_transport_F","C_Van_02_transport_F","C_Van_02_vehicle_F"];
private _civHelicopters = ["C_Heli_Light_01_civil_F","a3a_C_Heli_Transport_02_F"];
private _CivBoat = ["C_Boat_Civil_01_F","C_Rubberboat"];
private _staticMG = ["I_G_HMG_02_high_F", "I_G_HMG_02_F"];
private _staticAT = ["I_static_AT_F"];
private _staticAA = ["I_static_AA_F"];
private _staticMortars = ["I_G_Mortar_01_F", "braf_I_M252_AAF"];
["staticMortarMagHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["staticMortarMagSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;
["minesAT", ["ATMine_Range_Mag", "SLAMDirectionalMine_Wire_Mag"]] call _fnc_saveToTemplate;
["minesAPERS", ["ClaymoreDirectionalMine_Remote_Mag","APERSMine_Range_Mag", "APERSBoundingMine_Range_Mag", "APERSTripMine_Wire_Mag"]] call _fnc_saveToTemplate;
["breachingExplosivesAPC", [["DemoCharge_Remote_Mag", 1]]] call _fnc_saveToTemplate;
["breachingExplosivesTank", [["SatchelCharge_Remote_Mag", 1], ["DemoCharge_Remote_Mag", 2]]] call _fnc_saveToTemplate;

if (_hasKart) then {
  #include "..\DLC_content\vehicles\Kart\Rebel_kart.sqf"
};
if (_hasApex) then {
  #include "..\DLC_content\vehicles\Apex\Vanilla_FIA.sqf"
};

if (_hasContact) then {
  #include "..\DLC_content\vehicles\Contact\Vanilla_FIA.sqf"
};

if (_hasLawsOfWar) then {
  #include "..\DLC_content\vehicles\LawsOfwar\Vanilla_FIA.sqf"
};

if (_hasWs) then {
  #include "..\DLC_content\vehicles\WS\Vanilla_FIA.sqf"
};

if (_hasGM) then {
  #include "..\DLC_content\vehicles\GM\Vanilla_FIA.sqf"
};

if (_hasCSLA) then {
  #include "..\DLC_content\vehicles\CSLA\Vanilla_FIA.sqf"
};

if (_hasRF) then {
  #include "..\DLC_content\vehicles\RF\Vanilla_FIA.sqf"
};

if (_hasSOG) then {
  #include "..\DLC_content\vehicles\SOG\Vanilla_FIA.sqf"
};

if (_hasSPE) then {
  #include "..\DLC_content\vehicles\SPE\Vanilla_FIA.sqf"
};

if (isClass (configFile >> "cfgVehicles" >> "SPEX_M2_60")) then {
	#include "..\MOD_content\SPEX\vehicles\Vanilla_FIA.sqf"
};

if (isClass (configFile >> "cfgVehicles" >> "vnx_b_air_ac119_02_01")) then {
	#include "..\MOD_content\Nickelsteel\vehicles\Vanilla_FIA.sqf"
};

["vehiclesCivPlane", _vehicleCivPlane] call _fnc_saveToTemplate;
["vehiclesCivSupply", _vehiclesSupply] call _fnc_saveToTemplate;
["vehiclesMedical", _vehiclesMedical] call _fnc_saveToTemplate;
["vehiclesBoat", _vehiclesBoat] call _fnc_saveToTemplate;
["staticMGs", _staticMG] call _fnc_saveToTemplate;
["staticAT", _staticAT] call _fnc_saveToTemplate;
["vehiclesCivHeli", _civHelicopters] call _fnc_saveToTemplate;
["vehiclesBasic", _vehiclesBasic] call _fnc_saveToTemplate;
["vehiclesPlane", _vehiclePlane] call _fnc_saveToTemplate;
["vehiclesCivTruck", _CivTruck] call _fnc_saveToTemplate;
["vehiclesTruck", _VehTruck] call _fnc_saveToTemplate;
["vehiclesCivBoat", _CivBoat] call _fnc_saveToTemplate;
["vehiclesAA", _vehicleAA] call _fnc_saveToTemplate;
["staticAA", _staticAA] call _fnc_saveToTemplate;
["vehiclesCivCar", _vehiclesCivCar] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", _vehiclesLightUnarmed] call _fnc_saveToTemplate;
["vehiclesLightArmed", _vehiclesLightArmed] call _fnc_saveToTemplate;
["vehiclesAT", _vehiclesAt] call _fnc_saveToTemplate;

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////

["variants", [
  #include "..\vehicleVariants\Vanilla_FIA.sqf"
]] call _fnc_saveToTemplate;

// #include "Vanilla_Reb_Vehicle_Attributes.sqf"
#include "BRLF_Reb_Vehicle_Attributes.sqf"

///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////

private _initialRebelEquipment = [
    "braf_sig_551", "braf_sig_556x45",
    "braf_hk33a3", "braf_30Rnd_556x45_HK",
    "CUP_arifle_FNFAL_OSW_railed", "CUP_arifle_FNFAL_railed_woodland", "CUP_20Rnd_762x51_FNFAL_M", "CUP_10Rnd_762x51_FNFAL_M",
    "CUP_hgun_Glock17_blk", "CUP_hgun_M9", "CUP_17Rnd_9x19_glock17", "CUP_15Rnd_9x19_M9", "braf_imbel_m973", "braf_9Rnd_9mm",
    ["launch_RPG32_F", 15], ["RPG32_F", 15],
    ["IEDUrbanSmall_Remote_Mag", 15], ["IEDLandSmall_Remote_Mag", 15], ["IEDUrbanBig_Remote_Mag", 15], ["IEDLandBig_Remote_Mag", 15],
    "CUP_HandGrenade_RGD5", "MiniGrenade", "SmokeShell",
    "braf_modular_assault_black", "braf_modular_assault_olive", "braf_alice_medium_olive", "B_AssaultPack_cbr", "B_AssaultPack_rgr", "B_AssaultPack_khk",
    "braf_iba_lizard", "braf_iba_lizard_rifleman", "braf_iba_lizard_squadleader", "braf_vest_wtc_m7_rifleman_belt_556_black",
    "braf_vest_wtc_m7_rifleman_belt_556_olive", "braf_vest_wtc_m7_rifleman_belt_762_black", "braf_vest_wtc_m7_rifleman_belt_762_olive",
    "braf_vest_wtc_m7_squad_leader_556_black", "braf_vest_wtc_m7_squad_leader_556_olive", "braf_vest_wtc_m7_squad_leader_762_black",
    "braf_vest_wtc_m7_squad_leader_762_olive",
    "acc_flashlight", "acc_flashlight_smg_01", "acc_flashlight_pistol", "optic_Holosight_blk_F", "optic_Aco", "optic_Hamr",
    "braf_eb_ccb_cover_nvg", "braf_eb_opscore_comtac_black", "braf_eb_opscore_comtac_olive",
    "Binocular", ["itemRadio", 15]
];

if (A3A_hasTFAR) then {_initialRebelEquipment append ["tf_microdagr","tf_anprc154"]};
if (A3A_hasTFAR && startWithLongRangeRadio) then {_initialRebelEquipment append ["tf_anprc155","tf_anprc155_coyote"]};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append ["TFAR_microdagr","TFAR_anprc154"]};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {_initialRebelEquipment append ["TFAR_anprc155","TFAR_anprc155_coyote"]};

_initialRebelEquipment append ["Chemlight_blue","Chemlight_green","Chemlight_red","Chemlight_yellow"];

["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

private _rebUniforms = [
    "braf_uniform_marine",
    "braf_army_combat_shirt_cfn_uniform",
    "braf_army_combat_shirt_cfn_uniform_gloves",
    "braf_army_acu_regular_uniform",
    "braf_army_acu_rolled_regular_uniform",
    "braf_army_acu_rolled_regular_uniform_gloves",
    "braf_army_combat_shirt_regular_uniform",
    "braf_army_combat_shirt_regular_uniform_gloves",
    "braf_army_combat_shirt_jungle_uniform",
    "braf_army_combat_shirt_jungle_uniform_gloves",
    "braf_army_combat_shirt_black_uniform",
    "braf_army_combat_shirt_black_uniform_gloves",
    "braf_army_combat_shirt_camo_uniform",
    "braf_army_combat_shirt_camo_uniform_gloves"
];

private _dlcUniforms = [];

["uniforms", _rebUniforms + _dlcUniforms] call _fnc_saveToTemplate;

private _headgear = [
  "H_Booniehat_khk_hs",
  "H_Booniehat_khk",
  "H_Booniehat_tan",
  "H_Booniehat_oli",
  "H_Bandanna_gry",
  "H_Bandanna_blu",
  "H_Bandanna_cbr",
  "H_Bandanna_khk_hs",
  "H_Bandanna_khk",
  "H_Bandanna_sgg",
  "H_Bandanna_sand",
  "H_Bandanna_surfer",
  "H_Bandanna_surfer_blk",
  "H_Bandanna_surfer_grn",
  "H_Bandanna_camo",
  "H_Watchcap_blk",
  "H_Watchcap_cbr",
  "H_Watchcap_camo",
  "H_Watchcap_khk",
  "H_Beret_blk",
  "H_Booniehat_khk_hs",
  "H_Booniehat_khk",
  "H_Booniehat_oli",
  "H_Booniehat_tan",
  "H_Cap_oli",
  "H_Cap_surfer",
  "H_Cap_tan",
  "H_Cap_oli_hs",
  "H_Cap_blk",
  "H_Cap_headphones",
  "H_Hat_blue",
  "H_Hat_brown",
  "H_Hat_camo",
  "H_Hat_checker",
  "H_Hat_grey",
  "H_Hat_tan",
  "H_Cap_marshal",
  "H_MilCap_blue",
  "H_MilCap_gry",
  "H_ShemagOpen_tan",
  "H_ShemagOpen_khk",
  "H_ShemagOpen_tan",
  "H_Shemag_olive_hs",
  "H_StrawHat",
  "H_StrawHat_dark"
];

private _dlcheadgear = [];

["headgear", _headgear + _dlcheadgear] call _fnc_saveToTemplate;

/////////////////////
///  Identities   ///
/////////////////////

private _faces = ["WhiteHead_01","WhiteHead_02","WhiteHead_03","WhiteHead_04","WhiteHead_05","WhiteHead_06","WhiteHead_07","WhiteHead_08","WhiteHead_09","WhiteHead_10","AfricanHead_01","AfricanHead_02","AfricanHead_03","GreekHead_A3_01","GreekHead_A3_02","GreekHead_A3_03","GreekHead_A3_04","GreekHead_A3_05","GreekHead_A3_06","GreekHead_A3_07","GreekHead_A3_08","GreekHead_A3_09"];
private _voices = ["Male01ENG","Male02ENG","Male03ENG","Male04ENG","Male05ENG","Male06ENG","Male07ENG","Male08ENG","Male09ENG","Male10ENG","Male11ENG","Male12ENG","Male01ENGB","Male02ENGB","Male03ENGB"];
["faces", _faces] call _fnc_saveToTemplate;
["voices", _voices] call _fnc_saveToTemplate;
"EnglishMen" call _fnc_saveNames;

//////////////////////////
//       Loadouts       //
//////////////////////////

private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["binoculars", ["Binocular"]];
_loadoutData set ["radios", ["itemRadio"]];
_loadoutData set ["uniforms", _rebUniforms + _dlcUniforms]; ///check this one

_loadoutData set ["glasses", ["G_Lady_Blue","G_Shades_Black", "G_Shades_Blue", "G_Shades_Green", "G_Shades_Red", "G_Aviator", "G_Spectacles", "G_Spectacles_Tinted", "G_Sport_BlackWhite", "G_Sport_Blackyellow", "G_Sport_Greenblack", "G_Sport_Checkered", "G_Sport_Red", "G_Squares", "G_Squares_Tinted"]];
_loadoutData set ["goggles", ["G_Lowprofile"]];
_loadoutData set ["facemask", ["G_Bandanna_blk", "G_Bandanna_oli", "G_Bandanna_khk", "G_Bandanna_tan", "G_Bandanna_beast", "G_Bandanna_shades", "G_Bandanna_sport", "G_Bandanna_aviator"]];
_loadoutData set ["balaclavas", ["G_Balaclava_blk", "G_Balaclava_BlueStrips", "G_Balaclava_Flecktarn", "G_Balaclava_Halloween_01", "G_Balaclava_lowprofile", "G_Balaclava_oli", "G_Balaclava_Flames1", "G_Balaclava_Scarecrow_01", "G_Balaclava_Skull1", "G_Balaclava_Tropentarn"]];
_loadoutData set ["argoFacemask", ["G_Bandanna_BlueFlame1", "G_Bandanna_BlueFlame2", "G_Bandanna_CandySkull", "G_Bandanna_OrangeFlame1", "G_Bandanna_RedFlame1", "G_Bandanna_Skull1", "G_Bandanna_Syndikat1", "G_Bandanna_Syndikat2","G_Bandanna_Skull2", "G_Bandanna_Vampire_01"]];
_loadoutData set ["facewearWS", []];
_loadoutData set ["facewearContact", []];
_loadoutData set ["facewearLawsOfWar", []];
_loadoutData set ["facewearGM", []];
_loadoutData set ["facewearCLSA", []];
_loadoutData set ["facewearSOG", []];
_loadoutData set ["facewearSPE", []];

if (_hasWs) then {
  #include "..\DLC_content\gear\WS\Vanilla_FIA.sqf"
};

if (_hasRF) then {
  #include "..\DLC_content\gear\RF\Vanilla_FIA.sqf"
};

if (_hasContact) then {
  #include "..\DLC_content\gear\Contact\Vanilla_FIA.sqf"
};

if (_hasApex) then {
  #include "..\DLC_content\gear\Apex\Vanilla_FIA.sqf"
};

if (_hasLawsOfWar) then {
  #include "..\DLC_content\gear\Lawsofwar\Vanilla_FIA.sqf"
};

if (_hasGM) then {
  #include "..\DLC_content\gear\GM\Vanilla_FIA.sqf"
};

if (_hasCSLA) then {
  #include "..\DLC_content\gear\CSLA\Vanilla_FIA.sqf"
};

if (_hasArtOfWar) then {
  #include "..\DLC_content\gear\Artofwar\Vanilla_FIA.sqf"
};

if (_hasSOG) then {
  #include "..\DLC_content\gear\SOG\Vanilla_FIA.sqf"
};

if (_hasSPE) then {
  #include "..\DLC_content\gear\SPE\Vanilla_FIA.sqf"
};

if (isClass (configFile >> "cfgVehicles" >> "vnx_b_air_ac119_02_01")) then {
	#include "..\MOD_content\Nickelsteel\gear\Vanilla_FIA.sqf"
};

_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

////////////////////////
//  Rebel Unit Types  //
///////////////////////.

private _squadLeaderTemplate = {
    ["uniforms"] call _fnc_setUniform;
    [selectRandomWeighted [[], 1.25, "glasses", 1, "goggles", 0.75, "facemask", 1, "balaclavas", 1, "argoFacemask", 1 , "facewearWS", 0.75, "facewearContact", 0.3, "facewearLawsOfWar", 0.5, "facewearGM", 0.3, "facewearCLSA", 0.2,"facewearSOG", 0.3]] call _fnc_setFacewear;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["binoculars"] call _fnc_addBinoculars;
    ["radios"] call _fnc_addRadio;
};

private _riflemanTemplate = {
    ["uniforms"] call _fnc_setUniform;
    [selectRandomWeighted [[], 1.25, "glasses", 1, "goggles", 0.75, "facemask", 1, "balaclavas", 1, "argoFacemask", 1 , "facewearWS", 0.75, "facewearContact", 0.3, "facewearLawsOfWar", 0.5, "facewearGM", 0.3, "facewearCLSA", 0.2,"facewearSOG", 0.3]] call _fnc_setFacewear;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _prefix = "militia";
private _unitTypes = [
    ["Petros", _squadLeaderTemplate],
    ["SquadLeader", _squadLeaderTemplate],
    ["Rifleman", _riflemanTemplate],
    ["staticCrew", _riflemanTemplate],
    ["Medic", _riflemanTemplate, [["medic", true]]],
    ["Engineer", _riflemanTemplate, [["engineer", true]]],
    ["ExplosivesExpert", _riflemanTemplate, [["explosiveSpecialist", true]]],
    ["Grenadier", _riflemanTemplate],
    ["LAT", _riflemanTemplate],
    ["AT", _riflemanTemplate],
    ["AA", _riflemanTemplate],
    ["MachineGunner", _riflemanTemplate],
    ["Marksman", _riflemanTemplate],
    ["Sniper", _riflemanTemplate],
    ["Unarmed", _riflemanTemplate]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;
