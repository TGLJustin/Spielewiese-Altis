/*
	File: radatrap.sqf
	Author: Pooschi
	
	Description:
	Blitzer Script
*/
private ["_speed","_vehicle","_blitzer","_name","_list"];

while {playerSide == civilian} do 
{
	_vehicle = vehicle player;
	_speed = speed _vehicle;
	_blitzer = [];
	_name = getText (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayname");
	_list = ["C_Kart_01_Blu_F","C_Kart_01_Fuel_F","C_Kart_01_Red_F","C_Kart_01_Vrana_F","O_MRAP_02_F","B_Quadbike_01_F","C_Hatchback_01_F","C_Offroad_01_F","C_SUV_01_F","C_Van_01_transport_F","C_Hatchback_01_sport_F","C_Van_01_box_F","I_Truck_02_transport_F","I_Truck_02_covered_F","I_Truck_02_box_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_Truck_01_box_F","B_MRAP_01_F","I_MRAP_03_F"];
	{
		if ((player == driver _vehicle) && (_vehicle distance _x < 15) && (_speed >= 55)) then 
		{ 
			titleCut [" ","white in",1];
			switch(true) do
			{
				case (_speed >= 55 and _speed < 70): 	{[[getPlayerUID player,name player,"500"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;};
				case (_speed >= 70 and _speed < 85): 	{[[getPlayerUID player,name player,"501"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;};
				case (_speed >= 85 and _speed < 100): 	{[[getPlayerUID player,name player,"502"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;};
				case (_speed >= 100 and _speed < 115): 	{[[getPlayerUID player,name player,"503"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;};
				case (_speed >= 115 and _speed < 130): 	{[[getPlayerUID player,name player,"504"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;};
				case (_speed >= 130 and _speed < 145): 	{[[getPlayerUID player,name player,"505"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;};
				case (_speed >= 145 and _speed < 160): 	{[[getPlayerUID player,name player,"506"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;};
				case (_speed >= 160 and _speed < 350): 	{[[getPlayerUID player,name player,"507"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;};
			};
			hint parseText format ["Du wurdest grade geblitzt! (Limit: 50, Geschwindigkeit: %1)", round _speed];
			[[0,format["%1 wurde geblitzt! Fahrzeug: %4, Position: %3, Geschwindigkeit: %2 Kmh!",name player, round _speed, _x, _name]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;		
			[[0,format["%1 wurde geblitzt! Fahrzeug: %3, Geschwindigkeit: %2 Kmh!",name player, round _speed, _name]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
			sleep 3;
		};
	} foreach _blitzer;
	sleep 1;
};