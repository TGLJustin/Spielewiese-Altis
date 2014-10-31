#include <macro.h>
/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter","_ret", "_gang_sd", "_gang_adac"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Arbeiteroutlett Lagerverkauf"];

// GANG CONFIGS
// EAST
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret = [
			["U_I_CombatUniform_shortsleeve","ADAC Dienstkleidung",500],
			["U_I_HeliPilotCoveralls","ADAC Dienstkleidung",500],
			["U_I_pilotCoveralls","ADAC Dienstkleidung",500],
			["U_I_Wetsuit","ADAC Dienstkleidung",500],
			["U_OG_Guerilla2_1","ADAC Dienstkleidung",500],
			["U_OG_Guerilla2_2","ADAC Dienstkleidung",500],
			["U_OG_Guerilla2_3","ADAC Dienstkleidung",500]
		];
	};
	
	//Hats
	case 1:
	{
		_ret = [
			["H_Bandanna_camo","Camo Bandanna",120]
		];
	};
	
	//Glasses
	case 2:
	{
		_ret = [
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		_ret = [
			["V_Rangemaster_belt",nil,10000]
		];
	};
	
	//Backpacks
	case 4:
	{
		_ret = [
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000]
		];
	};
};
_ret;