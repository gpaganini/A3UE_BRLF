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
private _vehiclesBasic = ["BRAF_AM11_Unarmed","I_Quadbike_01_F"];
private _vehiclesLightUnarmed = ["BRAF_LMV_EB","BRAF_AM21_GLO","BRAF_AM21_Opened","I_G_Offroad_01_F","I_C_Offroad_02_unarmed_F"];
private _vehiclesLightArmed = ["BRAF_LMV_EB_RCWS","BRAF_AM11_Armed","I_C_Offroad_02_LMG_F","I_G_Offroad_01_armed_F"];
private _vehTruck = ["BRAF_AM21_Covered","I_C_Van_01_transport_F","BRAF_Worker_Covered","BRAF_Worker_Cargo","BRAF_AM21_Cargo","I_G_Van_02_transport_F","I_G_Van_02_vehicle_F"];
private _vehiclesAt = ["CUP_I_Hilux_metis_IND_G_F","I_G_Offroad_01_AT_F","I_C_Offroad_02_AT_F"];
private _vehicleAA = ["CUP_I_Hilux_igla_IND_G_F"];
//      Water
private _vehiclesBoat = ["braf_voadeira_01","braf_voadeira_02","I_C_Boat_Transport_02_F" ,"I_SDV_01_F" ,"I_Boat_Armed_01_minigun_F","O_Boat_Armed_01_hmg_F"];
//      Air
private _vehiclesPlane = ["C_Plane_Civil_01_F","C_Plane_Civil_01_racing_F"];
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
private _staticMortars = ["I_G_Mortar_01_F"];
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
    "CUP_arifle_FNFAL_OSW_railed","CUP_20Rnd_762x51_FNFAL_M","CUP_10Rnd_762x51_FNFAL_M",
    "CUP_smg_M3A1_blk","CUP_30Rnd_45ACP_M3A1_BLK_M",
    "CUP_hgun_Glock17_blk","CUP_hgun_M9","CUP_17Rnd_9x19_glock17","CUP_15Rnd_9x19_M9",
    "braf_imbel_m973", "braf_9Rnd_9mm",
    ["launch_RPG32_F", 15], ["RPG32_F", 15],
    ["IEDUrbanSmall_Remote_Mag", 15], ["IEDLandSmall_Remote_Mag", 15], ["IEDUrbanBig_Remote_Mag", 15], ["IEDLandBig_Remote_Mag", 15],
    "CUP_HandGrenade_RGD5", "MiniGrenade", "SmokeShell",
    "B_FieldPack_oli","B_FieldPack_blk","B_FieldPack_khk", "B_FieldPack_cbr", "B_AssaultPack_cbr","B_AssaultPack_rgr","B_AssaultPack_khk",
    "V_Chestrig_oli","V_Chestrig_rgr","V_TacChestrig_grn_F","V_TacChestrig_oli_F","V_TacChestrig_cbr_F","V_PlateCarrier1_rgr_noflag_F","CUP_V_I_Carrier_Belt", "CUP_V_I_RACS_Carrier_Rig_2", "CUP_V_I_RACS_Carrier_Rig_wdl_2",
    "acc_flashlight","acc_flashlight_smg_01","acc_flashlight_pistol","optic_Holosight_blk_F","optic_Aco",
    "Binocular"
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
    "CUP_U_O_Partisan_TTsKO_Mixed",
    "CUP_U_O_Partisan_TTsKO",
    "CUP_U_B_BDUv2_roll2_gloves_OD",
    "CUP_U_I_GUE_Anorak_01",
    "CUP_U_I_GUE_Anorak_03",
    "CUP_U_I_GUE_Anorak_02",
    "CUP_U_B_BDUv2_roll2_DPM_OD",
    "U_IG_Guerilla2_2",
    "U_IG_Guerilla2_3",
    //"braf_army_jacket_lizard_uniform",
    //"braf_army_jacket_gloves_lizard_uniform",
    "braf_army_regular_rolled_uniform",
    "braf_army_regular_rolled_uniform_gloves"
]; //Uniforms given to Player Rebels

private _rebUniformsAI = [
    "CUP_U_O_Partisan_TTsKO_Mixed",
    "CUP_U_O_Partisan_TTsKO",
    "CUP_U_B_BDUv2_roll2_gloves_OD",
    "CUP_U_I_GUE_Anorak_01",
    "CUP_U_I_GUE_Anorak_03",
    "CUP_U_I_GUE_Anorak_02",
    "CUP_U_B_BDUv2_roll2_DPM_OD",
    "U_IG_Guerilla2_2",
    "U_IG_Guerilla2_3",
    //"braf_army_jacket_lizard_uniform",
    //"braf_army_jacket_gloves_lizard_uniform",
    "braf_army_regular_rolled_uniform",
    "braf_army_regular_rolled_uniform_gloves"
]; //Uniforms given to AI Rebels

["uniforms", _rebUniforms] call _fnc_saveToTemplate;         //These Items get added to the Arsenal

//"BrazilianMen" call _fnc_saveNames;

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
private _voices = ["Male01ENG","Male02ENG","Male03ENG","Male04ENG","Male05ENG","Male06ENG","Male07ENG","Male08ENG","Male09ENG","Male10ENG","Male11ENG","Male12ENG"];
["faces", _faces] call _fnc_saveToTemplate;
["voices", _voices] call _fnc_saveToTemplate;

//["faces", ["AfricanHead_01","AfricanHead_02","AfricanHead_03","WhiteHead_01","WhiteHead_02","WhiteHead_03","WhiteHead_04","WhiteHead_05","WhiteHead_06","WhiteHead_07","WhiteHead_08","WhiteHead_09","WhiteHead_10","WhiteHead_11","WhiteHead_12","WhiteHead_13","WhiteHead_14","WhiteHead_15","WhiteHead_16","WhiteHead_17","WhiteHead_19","WhiteHead_20","WhiteHead_21"]] call _fnc_saveToTemplate;
//["voices", ["Male01ENG","Male02ENG","Male03ENG","Male01ENGB","Male02ENGB","Male03ENGB"]] call _fnc_saveToTemplate;
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