/*
	File: fn_adacSirenLights.sqf
	Author: Cypher Vox
	
	Description: Same as fn_sirenLights.sqf or fn_medicSirenLights.sqf
	Props to Tonic ;)
*/
private["_vehicle"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _vehicle) exitWith {}; //Bad entry!
if(!(typeOf _vehicle in ["O_G_Offroad_01_repair_F"])) exitWith {}; //Last chance check to prevent something from defying humanity and creating a monster.

_trueorfalse = _vehicle getVariable["lights",FALSE];

if(_trueorfalse) then {
	_vehicle setVariable["lights",FALSE,TRUE];
} else {
	_vehicle setVariable["lights",TRUE,TRUE];
	[[_vehicle,0.22],"life_fnc_adacLights",true,false] call life_fnc_MP;