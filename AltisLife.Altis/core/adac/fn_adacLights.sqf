/*
	File: fn_copLights.sqf
	Author: mindstorm, modified by Adanteh
	Link: http://forums.bistudio.com/showthread.php?157474-Offroad-Police-sirens-lights-and-underglow
	
	Description:
	Adds the light effect to cop vehicles, specifically the offroad.
*/
Private ["_vehicle","_lightRed","_lightBlue","_lightleft","_lightright","_active","_attach"];
_vehicle = _this select 0;
	
if(isNil "_vehicle" || isNull _vehicle || !(_vehicle getVariable "lights")) exitWith {};

switch (typeOf _vehicle) do
{
	case "O_G_Offroad_01_repair_F": { _attach = [[-0.37, 0, 0.56], [0.37, 0, 0.56]]; };
};

_lightRed = [255, 170, 0.1];
_lightBlue = [255, 170, 0.1];

_lightleft = createVehicle ["#lightpoint", getPos _vehicle, [], 0, "CAN_COLLIDE"];
sleep 0.2;
_lightleft setLightColor _lightRed;
_lightleft setLightBrightness 0;
_lightleft lightAttachObject [_vehicle, _attach select 0];
_lightleft setLightAttenuation [0.181, 0, 1000, 130];
_lightleft setLightIntensity 15;
_lightleft setLightFlareSize 0.38;
_lightleft setLightFlareMaxDistance 150;
_lightleft setLightUseFlare true;
_lightleft setLightDayLight true;

_lightright = createVehicle ["#lightpoint", getPos _vehicle, [], 0, "CAN_COLLIDE"];
sleep 0.2;
_lightright setLightColor _lightBlue;
_lightright setLightBrightness 0;
_lightright lightAttachObject [_vehicle, _attach select 1];
_lightright setLightAttenuation [0.181, 0, 1000, 130];
_lightright setLightIntensity 15;
_lightright setLightFlareSize 0.38;
_lightright setLightFlareMaxDistance 150;
_lightright setLightUseFlare true;
_lightright setLightDayLight true;


if (sunOrMoon < 1) then {
	_brightness = 6;
} else {
	_brightness = 50;
};

_active = true;
while {(alive _vehicle)} do { 
	// hint format ["DEBUG: lights: %1 \n Vehicle Player: %2",!(_vehicle getVariable "lights"),!(vehicle player !=player)];
	if (!(_vehicle getVariable "lights")) exitWith {};
	if (_active) then {
		_lightright = setLightBrightness 0;
		sleep 0.05;
		_lightleft = setLightBrightness _brightness;
	} else {
		_lightleft = setLightBrightness 0;
		sleep 0.05;
		_lightright = setLightBrightness _brightness;
	};
	sleep 0.22;  
};  
deleteVehicle _lightleft;
deleteVehicle _lightright;