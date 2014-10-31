/*
File: fn_vehicleColorStr.sqf
Author: Bryan "Tonic" Boardwine

Description:
Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	//leichte Fahrzeuge:
	
	//Quadbike
	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Schwarz"};
			case 1: {_color = "Blau"};
			case 2: {_color = "Weiß"};
			case 3: {_color = "Hunter-Camo"};
		};
	};
	
	//SUV
	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Silber"};
			case 1: {_color = "Ferrari"};
			case 2: {_color = "Batman"};
			case 3: {_color = "Benz"};
			case 4: {_color = "Flammen"};
			case 5: {_color = "Flamme"};
			case 6: {_color = "Joker"};
			case 7: {_color = "Regenbogen"};
			case 8: {_color = "Rosti"};
			case 9: {_color = "Superman"};
			case 10: {_color = "Polizei SUV 32/1"};
			case 11: {_color = "Notarzt"};
		};
	};
	
	//Limousine
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Dunkelblau"};
			case 1: {_color = "Gelb"};
			case 2: {_color = "Weiß"};
			case 3: {_color = "Schwarz"};
			case 4: {_color = "Balls"};
			case 5: {_color = "Rot"};
			case 6: {_color = "RedGull"};
			case 7: {_color = "Monster"};
		};
	};
	
	//Sport-Limousine
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Rot"};
			case 1: {_color = "Dunkelblau"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Schwarz/Weiß"};
			case 4: {_color = "Taxi Service"};
			case 5: {_color = "Polizei"};
		};
	};
	
	//Offroader
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Dunkelrot"};
			case 1: {_color = "Polizei Offroad 85/1"};
			case 2: {_color = "Bär"};
			case 3: {_color = "Monster"};
			case 4: {_color = "Energy"};
			case 5: {_color = "Camo"};
			case 6: {_color = "Comic"};
			case 7: {_color = "Kiffer"};
			case 8: {_color = "Stacheln (rot)"};
			case 9: {_color = "Stacheln (grün)"};
			case 10: {_color = "Ying Yang"};
		};
	};
	
	//Offroader Repair (ADAC)
	case "O_G_Offroad_01_repair_F":
	{
		switch (_index) do
		{
			case 0: {_color = "ADAC"};
		};
	};
	
	//schwere Fahrzeuge:
	
	//unbewaffnet:
	
	//Hunter
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
		};
	};
	
	//Strider
	case "I_MRAP_03_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
			//Zivis
			case 1: {_color = "Grün"};
			case 2: {_color = "Rot"};
			case 3: {_color = "Sand"};
			//Rebellen
			case 4: {_color = "Grün"};
			case 5: {_color = "Rot"};
			case 6: {_color = "Sand"};
		};
	};
	
	//Ifrit
	case "O_MRAP_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
			case 1: {_color = "Gelb"};
			case 2: {_color = "Rot"};
			case 3: {_color = "Grün"};
			case 4: {_color = "Rebellen"};
		};
	};
	
	//bewaffnet:
	
	//Hunter-HMG
	case "B_MRAP_01_hmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
		};
	};
	
	//Strider-HMG
	case "I_MRAP_03_hmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
		};
	};

	//Ifrit-HMG
	case "O_MRAP_02_hmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Rebellen"};
			case 1: {_color = "Polizei"};
		};
	};
	
	//Marid
	case "O_APC_Wheeled_02_rcws_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
		};
	};

	//Trucks:
	
	//Truck Boxer
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Weiß"};
			case 1: {_color = "Rot"};
			case 2: {_color = "RTW"};
		};
	};
	
	//Truck (ohne Box)
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Weiß"};
			case 1: {_color = "Rot"};
		};
	};
	
	//Zamak abgedeckt
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Gelb"};
			case 2: {_color = "Rot"};
			case 3: {_color = "Weiß"};
		};
	};
	
	//Zamak offen
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
		};
	};
	
	//Flugobjekte:
	
	//Hummingbird
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
			case 1: {_color = "Blau"};
			case 2: {_color = "Rot"};
			case 3: {_color = "Digital Grün"};
			case 4: {_color = "Elliptical"};
			case 5: {_color = "Jeans Blue"};
			case 6: {_color = "Rebellen"};
			case 7: {_color = "Notarzt"};
			case 8: {_color = "ADAC"};
			case 9: {_color = "Schwarz"};
		};
	};
	
	//Orca
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Schwarz"};
			case 1: {_color = "Weiß/Blau"};
			case 2: {_color = "Digital Grün"};
			case 3: {_color = "Flotter Willi"};
			case 4: {_color = "Wüste"};
			case 5: {_color = "Luftrettung"};
			case 6: {_color = "Polizei"};
		};
	};
	
	//Hellcat (unbewaffnet)
	case "I_Heli_light_03_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
			case 1: {_color = "Rebellen"};
		};
	};
	
	//Hellcat (bewaffnet)
	case "I_Heli_light_03_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
			case 1: {_color = "Rebellen"};
		};
	};
	
	//Mohawk
	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};
		};
	};

	//Boote:
	
	//Motorboot
	case "C_Boat_Civil_01_police_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Polizei"};
		};
	};
	
	//Speedboot
	case "B_Boat_Armed_01_minigun_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
		};
	};	
};

_color;