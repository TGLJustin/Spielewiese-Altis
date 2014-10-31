#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop", "_coplevel"];

_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			default
			{
			 ["Polizei Grundaustattung",
					[
						//Pistolen
						["hgun_P07_snds_F","Tazer",10000],
						//Munition
						["16Rnd_9x21_Mag",nil,750],
						//Attachments
						["muzzle_snds_L",nil,5000],
						//Stuff
						["Chemlight_green",nil,100],
						["Chemlight_red",nil,100],
						["Chemlight_yellow",nil,100],
						["Chemlight_blue",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,300],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["Itemwatch",nil,100],
						["ItemCompass",nil,50],
						["ItemMap",nil,50],
						["NVGoggles",nil,2000],
						["Rangefinder",nil,4000]
					]
				];
			};
		};
	};
	
	case "security":
	{
		switch(true) do
		{
			case ((getPlayerUID player) in  __GETC__(life_gang_sd)): 
			{
			 ["Altis Life SD Shop",
				   	[
						["NVGoggles_OPFOR","Nachtsicht Schwarz",2000],
						["NVGoggles","Nachtsicht Braun",2000],
						["NVGoggles_INDEP","Nachtsicht Grün",2000],
						["hgun_P07_snds_F","Taser Pistole",2000],
						["hgun_P07_F",nil,7500],				   	
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],						
						["arifle_Mk20C_F",nil,130000],
						["SMG_02_ACO_F",nil,15000],
                        ["srifle_LRR_SOS_F",nil,200000],
						["arifle_MX_GL_F",nil,40000],       
                        ["srifle_GM6_F",nil,110000],
						["hgun_Pistol_heavy_01_F",nil,82000],
						["LMG_Zafir_F",nil,200000],
						["arifle_Katiba_C_F",nil,150000],
						["srifle_DMR_01_F",nil,190000],
						["srifle_EBR_F",nil,210000],
						["hgun_Pistol_heavy_02_F",nil,58000],	
						["hgun_Rook40_F",nil,61500],
						["6Rnd_45ACP_Cylinder",nil,250],
						["30Rnd_65x39_caseless_mag",nil,500],
						["30Rnd_9x21_Mag",nil,500],
						["30Rnd_556x45_Stanag",nil,1000],
						["20Rnd_556x45_UW_mag",nil,1000],
						["30Rnd_65x39_caseless_green",nil,1000],
						["30Rnd_556x45_Stanag",nil,1000],
						["10Rnd_762x51_Mag",nil,1000],
						["20Rnd_762x51_Mag",nil,1000],
                        ["5Rnd_127x108_Mag",nil,2000],
                        ["7Rnd_408_Mag",nil,9500],
						["150Rnd_762x51_Box",nil,5000],
						["11Rnd_45ACP_Mag",nil,70],
						["16Rnd_9x21_Mag",nil,120],
                        ["optic_Arco",nil,4000],
						["optic_Aco",nil,2500],
						["optic_ACO_grn",nil,2500],
						["optic_Aco_smg",nil,2500],
						["optic_ACO_grn_smg",nil,2500],
						["optic_Holosight",nil,3000],
						["optic_Holosight_smg",nil,3000],
						["optic_Hamr",nil,5000],
                        ["optic_SOS",nil,5000],
                        ["optic_NVS",nil,6000],
                        ["optic_LRPS",nil,12000],
                        ["optic_DMS",nil,6500],
						["optic_Yorris",nil,1000],
						["muzzle_snds_H_MG",nil,5000],
						["30Rnd_9x21_Mag",nil,250],
						["Chemlight_red",nil,30],
				        ["Chemlight_yellow",nil,30],
				        ["Chemlight_green",nil,30],
						["FirstAidKit",nil,150],
						["acc_flashlight",nil,500],
						["acc_pointer_IR",nil,500],
						["muzzle_snds_B",nil,10000],
						["muzzle_snds_H",nil,10000],
						["muzzle_snds_acp",nil,10000],
						["Rangefinder",nil,16500],
						["optic_MRCO",nil,6000],
						["200Rnd_127x99_mag_Tracer_Green",nil,9000]
					]
				];
			};
			default {"Du bist kein Mitglied des Sicherheitsdienstes"};
		};
	};
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Du bist kein Sanitäter"};
			default {
			["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["ItemMap",nil,100],
						["Medikit",nil,500],
						["ToolKit",nil,2500],
						["Binocular",nil,150],
						["FirstAidKit",nil,150],
						["NVGoggles_INDEP",nil,1200],
						["Chemlight_red",nil,30],
						["Chemlight_yellow",nil,30],
						["Chemlight_green",nil,30],
						["Chemlight_blue",nil,30]

					]
				];
			};
		};
	};
	case "adac_basic":
	{
		switch (true) do 
		{
			case (playerSide != east): {"Du bist kein ADAC Fahrer"};
			default {
			["ADAC Equiptment",
					[
						["ItemGPS",nil,100],
						["ItemMap",nil,100],
						["ToolKit",nil,2500],
						["Binocular",nil,150],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,1200],
						["Chemlight_red",nil,30],
						["Chemlight_yellow",nil,30],
						["Chemlight_green",nil,30],
						["Chemlight_blue",nil,30]
					]
				];
			};
		};
	};



	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 2): {"Du bist kein Officer!"};
			default
			{
		 ["Officer Shop",
					[
						//Gewehre
						["arifle_MXC_Black_F","MX Negra C",10000],
						["arifle_MXC_F","MX-Polizeiwaffe",10000],
						//Pistolen
						["hgun_P07_snds_F","Tazer",0],
						//Visiere
						["optic_ACO_grn_smg",nil,0],
						["optic_SOS",nil,0],
						["optic_MRCO",nil,0],
						["optic_Hamr",nil,0],
						["optic_Arco",nil,0],
						["optic_MRD",nil,0],
						["optic_Yorris",nil,0],
						["optic_Holosight",nil,0],
						//Munition
						["16Rnd_9x21_Mag",nil,0],
						["30Rnd_65x39_caseless_mag",nil,0],
						["30Rnd_65x39_caseless_mag_Tracer","Gummigeschosse",0],
						//Attachments
						["acc_flashlight",nil,0],
						["muzzle_snds_H",nil,0],
						//Stuff
						["Chemlight_green",nil,100],
						["Chemlight_red",nil,100],
						["Chemlight_yellow",nil,100],
						["Chemlight_blue",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,300],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["Itemwatch",nil,100],
						["ItemCompass",nil,50],
						["ItemMap",nil,50],
						["NVGoggles",nil,2000],
						["Rangefinder",nil,4000]	
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 4): {"Du bist kein Sergeant!"};
			default
			{
			["Sergeant Shop",
					[
						//Gewehre
						["arifle_MXC_Black_F","MX Negra C",10000],
						["arifle_MXC_Holo_pointer_F","MX-Polizeiwaffe",10000],
						["arifle_MX_GL_Black_F","MX Negra GL",10000],
						["arifle_MXM_Black_F","MXM Negra",10000],
						["srifle_EBR_F",nil,10000],
						//Pistolen
						["hgun_P07_snds_F","Tazer",10000],
						//Visiere
						["optic_ACO_grn_smg",nil,0],
						["optic_SOS",nil,0],
						["optic_MRCO",nil,0],
						["optic_Hamr",nil,0],
						["optic_Arco",nil,0],
						["optic_NVS",nil,0],
						["optic_MRD",nil,0],
						["optic_Yorris",nil,0],
						["optic_Holosight",nil,0],
						//Munition
						["16Rnd_9x21_Mag",nil,0],
						["30Rnd_65x39_caseless_mag",nil,0],
						["30Rnd_65x39_caseless_mag_Tracer","Gummigeschosse",0],
						["20Rnd_762x51_Mag",nil,0],
						["1Rnd_Smoke_Grenade_shell",nil,500],
						["1Rnd_SmokeGreen_Grenade_shell","TrÃ¤nengas GL",500],
						
						//Attachments
						["acc_flashlight",nil,0],
						["muzzle_snds_H",nil,0],
						["muzzle_snds_B",nil,0],
						//Stuff
						["MiniGrenade","Flashbang",0],
						["SmokeShell","Rauchgranate",0],
						["SmokeShellgreen","TrÃ¤nengas",500],
						["B_UAV_01_backpack_F",nil,0],
						["B_UavTerminal",nil,0],
						["Chemlight_green",nil,100],
						["Chemlight_red",nil,100],
						["Chemlight_yellow",nil,100],
						["Chemlight_blue",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,300],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["Itemwatch",nil,100],
						["ItemCompass",nil,50],
						["ItemMap",nil,50],
						["NVGoggles",nil,2000],
						["Rangefinder",nil,4000]
					]
				];
			};
		};
	};
	
	case "cop_lieutenant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 5): {"Du bist kein Lieutenant oder höher!"};
			default
			{
			["Scharfschuetze",
					[
						["srifle_GM6_F",nil,1500000],
						["5Rnd_127x108_Mag",nil,2500]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
			["Matze's illegale Ausrüstungen",
					[
						["hgun_P07_F",nil,25000],
						["hgun_P07_snds_F",nil,30000],
						["arifle_TRG20_F",nil,100000],
						["arifle_SDAR_F",nil,100000],
						["arifle_Katiba_F",nil,150000],
						["SMG_01_F",nil,150000],
						["srifle_DMR_01_F",nil,300000],
						["srifle_EBR_F",nil,350000],
						["LMG_Zafir_F",nil,900000],
						["LMG_Mk200_F",nil,1000000],
						["srifle_LRR_F",nil,1200000],
						["launch_NLAW_F",nil,3500000],
						["launch_RPG32_F",nil,3500000],
						["optic_Aco",nil,10000],
						["optic_Holosight",nil,10000],
						["optic_Yorris",nil,10000],
						["optic_MRD",nil,10000],
						["optic_Hamr",nil,20000],
						["optic_Arco",nil,20000],
						["optic_MRCO",nil,20000],
						["optic_DMS",nil,30000],
						["optic_NVS",nil,35000],
						["optic_SOS",nil,40000],
						["optic_LRPS",nil,40000],
						["optic_tws",nil,95000],
						["optic_Nightstalker",nil,125000],
						["30Rnd_9x21_Mag",nil,2500],
						["30Rnd_556x45_Stanag",nil,2500],
						["6Rnd_45ACP_Cylinder",nil,2500],
						["11Rnd_45ACP_Mag",nil,2500],
						["9Rnd_45ACP_Mag",nil,2500],
						["30Rnd_556x45_Stanag",nil,2500],
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,2500],
						["10Rnd_762x51_Mag",nil,2500],
						["20Rnd_762x51_Mag",nil,2500],
						["150Rnd_762x51_Box",nil,2500],
						["200Rnd_65x39_cased_Box",nil,2500],
						["30Rnd_45ACP_Mag_SMG_01",nil,2500],
						["7Rnd_408_Mag",nil,2500],
						["16Rnd_9x21_Mag",nil,2500],
						["NLAW_F",nil,2500],
						["RPG32_F",nil,2500],
						["muzzle_snds_M",nil,5000],
						["muzzle_snds_H",nil,5000],
						["muzzle_snds_H_MG",nil,5000],
						["muzzle_snds_B",nil,5000],
						["muzzle_snds_L",nil,5000]						
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_gun): {"Du hast kein Waffenschein!"};
			default
			{
				["Kai's Waffenarsenal",
					[
						["hgun_Rook40_F",nil,20000],
						["hgun_ACPC2_F",nil,20000],
						["hgun_Pistol_heavy_01_F",nil,20000],
						["hgun_Pistol_heavy_02_F",nil,20000],
						["hgun_PDW2000_F",nil,30000],
						["SMG_02_F",nil,35000],
						["arifle_Mk20_F",nil,50000],
						["optic_Aco",nil,10000],
						["optic_Holosight",nil,10000],
						["optic_Yorris",nil,10000],
						["optic_MRD",nil,10000],
						["optic_Hamr",nil,20000],
						["optic_Arco",nil,20000],
						["optic_MRCO",nil,20000],
						["optic_DMS",nil,30000],
						["optic_NVS",nil,35000],
						["optic_SOS",nil,40000],
						["optic_LRPS",nil,40000],
						["30Rnd_9x21_Mag",nil,2500],
						["30Rnd_556x45_Stanag",nil,2500],
						["6Rnd_45ACP_Cylinder",nil,2500],
						["11Rnd_45ACP_Mag",nil,2500],
						["9Rnd_45ACP_Mag",nil,2500],
						["muzzle_snds_M",nil,5000],
						["muzzle_snds_H",nil,5000],
						["muzzle_snds_H_MG",nil,5000],
						["muzzle_snds_B",nil,5000],
						["muzzle_snds_L",nil,5000]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Pistol_heavy_01_F",nil,82000],
						["LMG_Zafir_F",nil,500000],
						["150Rnd_762x51_Box",nil,5000],
						["11Rnd_45ACP_Mag",nil,70],
						["hgun_Rook40_F",nil,61500],
						["APERSMine_Range_Mag",nil,70000],
						["16Rnd_9x21_Mag",nil,120],
						["hgun_Pistol_heavy_02_F",nil,58000],
						["optic_Yorris",nil,1000],
						["6Rnd_45ACP_Cylinder",nil,250],
						["hgun_PDW2000_F",nil,90000],
						["30Rnd_9x21_Mag",nil,500],
						["arifle_SDAR_F",nil,140000],
						["30Rnd_556x45_Stanag",nil,1000],
						["20Rnd_556x45_UW_mag",nil,1000],
						["arifle_Katiba_C_F",nil,150000],
						["arifle_Katiba_F",nil,160000],
						["30Rnd_65x39_caseless_green",nil,1000],
						["arifle_Mk20C_F",nil,130000],
						["arifle_Mk20C_plain_F",nil,135000],
						["arifle_Mk20_F",nil,140000],
						["arifle_Mk20_plain_F",nil,160000],
						["30Rnd_556x45_Stanag",nil,1000],
						["srifle_DMR_01_F",nil,190000],
						["10Rnd_762x51_Mag",nil,1000],
						["srifle_EBR_F",nil,210000],
						["20Rnd_762x51_Mag",nil,1000],
						["acc_flashlight",nil,500],
						["acc_pointer_IR",nil,500],
						["7Rnd_408_Mag",nil,10000],
						["optic_Aco",nil,2500],
						["optic_ACO_grn",nil,2500],
						["optic_Aco_smg",nil,2500],
						["optic_ACO_grn_smg",nil,2500],
						["optic_Holosight",nil,3000],
						["optic_Holosight_smg",nil,3000],
						["optic_Hamr",nil,5000],
						["srifle_LRR_LRPS_F",nil,1500000],
						["muzzle_snds_B",nil,10000],
						["muzzle_snds_H",nil,10000],
						["muzzle_snds_acp",nil,10000],
						["optic_MRCO",nil,6000],
						["optic_SOS",nil,10000],
						["optic_Arco",nil,8000],
						["optic_NVS",nil,12000],
						["optic_DMS",nil,10000]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ItemCompass",nil,100],
				["ItemRadio",nil,100],
				["ItemMap",nil,100],
				["ToolKit",nil,2500],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
	case "gas":
	{
		["Altis General Store",
			[
				["Binocular",nil,300],
				["ItemGPS",nil,100],
				["ToolKit",nil,3500],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};
