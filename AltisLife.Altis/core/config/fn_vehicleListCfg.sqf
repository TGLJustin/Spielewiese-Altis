#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return", "_gang_sd", "_gang_adac"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];


switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
		    ["C_SUV_01_F",25000],
			["B_Truck_01_medical_F",100000]	
		];
	};
	
	case "med_air_hs": 
	{
		_return = [
				["B_Heli_Light_01_F",500000],
				["O_Heli_Light_02_unarmed_F",1000000]
		];			
	};

	case "civ_car":
	{
		_return = [
			["B_Quadbike_01_F",5000],
			["C_Hatchback_01_F",25000],
			["C_Hatchback_01_sport_F",40000],			
			["C_Offroad_01_F",35000],	
			["C_SUV_01_F",50000],
			["C_Van_01_transport_F",150000],
			["C_Van_01_box_F",250000]
		];

		// GANG Cars
		if((getPlayerUID player) in __GETC__(life_gang_sd)) then {
			_return = _return + 
			[
				["O_MRAP_02_F",640000],
				["O_MRAP_02_hmg_F",1130000]
			];
				
		};

	};
	
	case "civ_truck":
	{
		_return =
		[
			["I_Truck_02_transport_F",500000],
			["I_Truck_02_covered_F",1000000],
			["B_Truck_01_transport_F",2000000],
			["B_Truck_01_covered_F",3500000],
			["B_Truck_01_ammo_F",3500000],
			["B_Truck_01_box_F",5000000],
			["B_Truck_01_fuel_F",5000000],
			["O_Truck_03_transport_F",7500000],
			["O_Truck_03_ammo_F",7500000],
			["O_Truck_03_covered_F",10000000],
			["O_Truck_03_fuel_F",10000000],
			["O_Truck_03_device_F",25000000]
		];	
		
	};
	
	case "adac_truck":
	{
		_return =
		[
			["C_Offroad_01_repair_F",25000],
			["B_Heli_Light_01_F",500000]
		];
	};
	case "reb_car":
	{
		_return =
		[
			["O_MRAP_02_F",5000000],
			["I_MRAP_03_F",5000000],
			["B_Quadbike_01_F",2500],
			["C_Offroad_01_F",9000],
			["O_Heli_Light_02_unarmed_F",350000],
			["B_Heli_Light_01_F",2500000]
		];
	};
	
	case "cop_car":
	{
		if(__GETC__(life_coplevel) >= 1) then
		{
			_return set[count _return, ["C_Offroad_01_F",30000]];
		};
		if(__GETC__(life_coplevel) >= 2) then
		{
			_return set[count _return, ["C_Hatchback_01_sport_F",40000]];
			_return set[count _return, ["C_SUV_01_F",50000]];
		};
		if(__GETC__(life_coplevel) >= 4) then
		{
		    _return set[count _return, ["B_MRAP_01_F",50000]];
		};
		if(__GETC__(life_coplevel) >= 5) then
		{
			_return set[count _return, ["O_MRAP_02_F",750000]];
		    _return set[count _return, ["I_MRAP_03_F",500000]];
			_return set[count _return, ["B_MRAP_01_hmg_F",750000]];
		};
	
	};


	case "sd_car":
	{

		if((getPlayerUID player) in __GETC__(life_gang_sd)  )then {
			_return = _return + 
			[
				["B_Quadbike_01_F",2500],
				["C_Hatchback_01_F",9500],
				["C_Hatchback_01_sport_F",49500],			
				["C_Offroad_01_F",12500],
				["B_G_Offroad_01_F",12500],			
				["C_SUV_01_F",35000],
				["C_Van_01_box_F",60000],
				["C_Van_01_transport_F",40000],
				["O_MRAP_02_F",640000],
				["O_MRAP_02_hmg_F",1130000]
			];
		} else {
			_return = [
				["B_Quadbike_01_F",2500]
			];
		};

	};


	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",2500000],
			["O_Heli_Light_02_F",5000000],
			["I_Heli_Transport_02_F",7500000]
		];
	};
	
	case "cop_air":
	{

		if(__GETC__(life_coplevel) >= 1) then
		{
			_return set[count _return,["B_Heli_Light_01_F",75000]];
		};
		if(__GETC__(life_coplevel) >= 2) then
		{
			_return set[count _return,["O_Heli_Light_02_unarmed_F",175000]];
			_return set[count _return,["B_Heli_Transport_01_F",200000]];
		};
		if(__GETC__(life_coplevel) >= 3) then
		{
			_return set[count _return,["I_Heli_Transport_02_F",250000]];
		};
		if(__GETC__(life_coplevel) >= 4) then
		{
			_return set[count _return,["I_Heli_light_03_unarmed_F",275000]];

		};	


	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship":
	{
		if(__GETC__(life_coplevel) >= 2) then
		{
			 _return set[count _return,["C_Boat_Civil_01_police_F",20000]];
		};
		if(__GETC__(life_coplevel) >= 4) then
		{
			 _return set[count _return,["B_Boat_Armed_01_minigun_F",75000]];
			 _return set[count _return,["B_SDV_01_F",100000]];
		};
		if(__GETC__(life_coplevel) >= 6) then
		{
			 _return set[count _return,["O_Boat_Armed_01_hmg_F",40000]];
		};
	};
};


diag_log "VEHICLELIST CFG RETURN ARRAY:";
diag_log _return;

_return;
