///////////////////////////
//   Rebel Information   //
///////////////////////////

#include "..\..\script_component.hpp"

["name", "BRLF"] call _fnc_saveToTemplate;

["flag", "Flag_NATO_F"] call _fnc_saveToTemplate;
["flagTexture", QPATHTOFOLDER(Templates\BRLF\flag_brlf.paa)] call _fnc_saveToTemplate;
["flagMarkerType", "marker_brlf"] call _fnc_saveToTemplate;

////    Rebel Vehicles
//      Ground
private _vehiclesBasic = ["BRAF_AM11_Unarmed"];
private _vehiclesLightUnarmed = ["BRAF_LMV_EB","BRAF_AM21_GLO","BRAF_AM21_Opened","I_G_Offroad_01_F"];
private _vehiclesLightArmed = ["BRAF_LMV_EB_RCWS","BRAF_AM11_Armed","I_C_Offroad_02_LMG_F","I_G_Offroad_01_armed_F"];
private _vehTruck = ["BRAF_AM21_Covered","BRAF_Worker_Covered","BRAF_Worker_Cargo","BRAF_AM21_Cargo","I_G_Van_02_transport_F","I_G_Van_02_vehicle_F"];
private _vehiclesAt = ["I_G_Offroad_01_AT_F","I_C_Offroad_02_AT_F"];
private _vehicleAA = ["CUP_I_Hilux_igla_IND_G_F"];
//      Water
private _vehiclesBoat = ["braf_voadeira_01","braf_voadeira_02","I_C_Boat_Transport_02_F" ,"I_SDV_01_F" ,"I_Boat_Armed_01_minigun_F","O_Boat_Armed_01_hmg_F"];
//      Air
private _vehiclesPlane = ["braf_A29A","braf_A29B_Jambock"];
private _vehiclesMedical = ["C_Van_02_medevac_F","BRAF_Worker_Health","I_E_Van_02_medevac_F"];
private _vehiclesSupply = ["C_Van_01_box_F"];
////    Civilian Vehicles
private _vehiclesCivCar = ["C_Offroad_01_F","C_Hatchback_01_F","C_Hatchback_01_sport_F","C_Offroad_02_unarmed_F","C_SUV_01_F"];
private _vehicleCivPlane = ["C_Plane_Civil_01_F","C_Plane_Civil_01_racing_F"];
private _civTruck = ["C_Truck_02_transport_F","C_Van_01_transport_F","C_Van_02_transport_F","C_Van_02_vehicle_F"];
private _civHelicopters = ["C_Heli_Light_01_civil_F","a3a_C_Heli_Transport_02_F"];
private _civBoat = ["C_Boat_Civil_01_F","C_Rubberboat"];
////    Static
private _staticMG = ["I_G_HMG_02_high_F","I_G_HMG_02_F"];
private _staticAT = ["I_static_AT_F"];
private _staticAA = ["I_static_AA_F"];
private _staticMortars = ["I_G_Mortar_01_F","braf_I_M252_AAF"];
["staticMortarMagHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["staticMortarMagSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;

["minesAT", ["ATMine_Range_Mag", "SLAMDirectionalMine_Wire_Mag"]] call _fnc_saveToTemplate;
["minesAPERS", ["ClaymoreDirectionalMine_Remote_Mag","APERSMine_Range_Mag", "APERSBoundingMine_Range_Mag", "APERSTripMine_Wire_Mag"]] call _fnc_saveToTemplate;

["breachingExplosivesAPC", [["DemoCharge_Remote_Mag", 1]]] call _fnc_saveToTemplate;
["breachingExplosivesTank", [["SatchelCharge_Remote_Mag", 1], ["DemoCharge_Remote_Mag", 2]]] call _fnc_saveToTemplate;

////    Initialize private variables
["vehiclesCivPlane", _vehicleCivPlane] call _fnc_saveToTemplate;
["vehiclesCivSupply", _vehiclesSupply] call _fnc_saveToTemplate;
["vehiclesMedical", _vehiclesMedical] call _fnc_saveToTemplate;
["vehiclesBoat", _vehiclesBoat] call _fnc_saveToTemplate;
["staticMGs", _staticMG] call _fnc_saveToTemplate;
["staticAT", _staticAT] call _fnc_saveToTemplate;
["vehiclesCivHeli", _civHelicopters] call _fnc_saveToTemplate;
["vehiclesBasic", _vehiclesBasic] call _fnc_saveToTemplate;
["vehiclesPlane", _vehiclesPlane] call _fnc_saveToTemplate;
["vehiclesCivTruck", _CivTruck] call _fnc_saveToTemplate;
["vehiclesTruck", _VehTruck] call _fnc_saveToTemplate;
["vehiclesCivBoat", _CivBoat] call _fnc_saveToTemplate;
["vehiclesAA", _vehicleAA] call _fnc_saveToTemplate;
["staticAA", _staticAA] call _fnc_saveToTemplate;
["vehiclesCivCar", _vehiclesCivCar] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", _vehiclesLightUnarmed] call _fnc_saveToTemplate;
["vehiclesLightArmed", _vehiclesLightArmed] call _fnc_saveToTemplate;
["vehiclesAT", _vehiclesAt] call _fnc_saveToTemplate;

#include "BRLF_Reb_Vehicle_Attributes.sqf"

///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////

private _initialRebelEquipment = [
    "braf_sig_551","braf_sig_556x45","braf_hk33a3","braf_30Rnd_556x45_HK",
    "CUP_arifle_FNFAL_OSW_railed","CUP_arifle_FNFAL_railed_woodland","CUP_20Rnd_762x51_FNFAL_M","CUP_10Rnd_762x51_FNFAL_M",
    "CUP_hgun_Glock17_blk","CUP_hgun_M9","CUP_17Rnd_9x19_glock17","CUP_15Rnd_9x19_M9","braf_imbel_m973","braf_9Rnd_9mm",
    ["launch_RPG32_F", 15], ["RPG32_F", 15], ["braf_launch_alac", 15],
    ["IEDUrbanSmall_Remote_Mag", 15], ["IEDLandSmall_Remote_Mag", 15], ["IEDUrbanBig_Remote_Mag", 15], ["IEDLandBig_Remote_Mag", 15],
    "CUP_HandGrenade_RGD5","MiniGrenade","SmokeShell",
    "braf_modular_assault_black","braf_modular_assault_olive","braf_alice_medium_olive","B_AssaultPack_cbr","B_AssaultPack_rgr","B_AssaultPack_khk",
    "braf_iba_lizard","braf_iba_lizard_rifleman","braf_iba_lizard_squadleader","braf_vest_wtc_m7_rifleman_belt_556_black",
    "braf_vest_wtc_m7_rifleman_belt_556_olive","braf_vest_wtc_m7_rifleman_belt_762_black","braf_vest_wtc_m7_rifleman_belt_762_olive",
    "braf_vest_wtc_m7_squad_leader_556_black","braf_vest_wtc_m7_squad_leader_556_olive","braf_vest_wtc_m7_squad_leader_762_black",
    "braf_vest_wtc_m7_squad_leader_762_olive",
    "acc_flashlight","acc_flashlight_smg_01","acc_flashlight_pistol","optic_Holosight_blk_F","optic_Aco",
    "braf_eb_ccb_cover_nvg","braf_eb_opscore_comtac_black","braf_eb_opscore_comtac_olive",
    "Binocular","itemRadio"
];

if (A3A_hasTFAR) then {_initialRebelEquipment append ["tf_microdagr", "tf_anprc154"]};
if (A3A_hasTFAR && startWithLongRangeRadio) then {
    _initialRebelEquipment pushBack "tf_anprc155";
    _initialRebelEquipment pushBack "tf_anprc155_coyote";
};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append ["TFAR_microdagr", "TFAR_anprc154"]};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {
    _initialRebelEquipment pushBack "TFAR_anprc155";
    _initialRebelEquipment pushBack "TFAR_anprc155_coyote";
};

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
]; //Uniforms given to Player Rebels

private _rebUniformsAI = [
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
]; //Uniforms given to AI Rebels

["uniforms", _rebUniforms] call _fnc_saveToTemplate;         //These Items get added to the Arsenal

["headgear", [
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
]] call _fnc_saveToTemplate; //Headgear used by Rebell Ai until you have Armored Headgear.

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

_loadoutData set ["uniforms", _rebUniformsAI];
_loadoutData set ["facewear", [
    "None",
    "CUP_G_Balaclava_blk",
    "CUP_G_Balaclava_oli",
    "CUP_G_Bandanna_aviator",
    "CUP_G_Bandanna_beast",
    "CUP_G_Bandanna_blk",
    "CUP_G_Bandanna_khk",
    "CUP_G_Bandanna_oli",
    "CUP_G_Bandanna_shades",
    "CUP_G_Shades_Black"
]];

_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

////////////////////////
//  Rebel Unit Types  //
///////////////////////.

private _squadLeaderTemplate = {
    ["uniforms"] call _fnc_setUniform;
    ["facewear"] call _fnc_setFacewear;
    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["binoculars"] call _fnc_addBinoculars;
};

private _riflemanTemplate = {
    ["uniforms"] call _fnc_setUniform;
    ["facewear"] call _fnc_setFacewear;
    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
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