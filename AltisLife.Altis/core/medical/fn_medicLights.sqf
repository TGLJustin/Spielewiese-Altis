/*
	File: fn_copLights.sqf
	Author: mindstorm, modified by Adanteh
	Link: http://forums.bistudio.com/showthread.php?157474-Offroad-Police-sirens-lights-and-underglow
	
	Description:
	Adds the light effect to cop vehicles, specifically the offroad.
*/
Private ["_vehicle","_lightRed","_lightBlue","_lightleft","_lightright","_active","_attach","_tlightleft","_tlightright","_blightleft","_blightright"];
_vehicle = _this select 0;
	
if(isNil "_vehicle" || isNull _vehicle || !(_vehicle getVariable "lights")) exitWith {};

_lightRed = [0.1, 0.1, 20];
_lightBlue = [0.1, 0.1, 20];

_lightleft = "#lightpoint" createVehicle getpos _vehicle;
_tlightleft = "#lightpoint" createVehicle getpos _vehicle;
_blightleft = "#lightpoint" createVehicle getpos _vehicle;
_lightright = "#lightpoint" createVehicle getpos _vehicle;
_tlightright = "#lightpoint" createVehicle getpos _vehicle;
_blightright = "#lightpoint" createVehicle getpos _vehicle;
sleep 0.2;

{
	_x setLightColor _lightBlue;
	_x setLightBrightness 0.2;
	_x setLightAmbient [0.1,0.1,1];
} forEach [_lightleft];

{
	_x setLightColor _lightRed;
	_x setLightBrightness 0.2;
	_x setLightAmbient [0.1,0.1,1];
} forEach [_lightright];

switch (typeOf _vehicle) do
{
	case "C_SUV_01_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.4, 2.3, -0.55]];
		_lightright lightAttachObject [_vehicle, [0.4, 2.3, -0.52]];
	};
	case "C_Van_01_box_F":
	{
		{
			_x setLightColor _lightBlue;
			_x setLightBrightness 0.2;
			_x setLightAmbient [0.1,0.1,1];
		} forEach [_toplightleft, _backlightleft];
		{
			_x setLightcolor _lightRed;
			_x setLightBrightness 0.2;
			_x setLightAmbient [0.1,0.1,1];
		} forEach [_toplightright, _backlightright];
		_lightleft lightAttachObject [_vehicle, [-0.25, 1.9, -0.5]];
		_lightright lightAttachObject [_vehicle, [0.2, 1.9, -0.5]];
		_toplightleft lightAttachObject [_vehicle, [-0.8, -0.2, 1.4]];
		_toplightright lightAttachObject [_vehicle, [0.75, -0.2, 1.4]];
		_backlightleft lightAttachObject [_vehicle, [-0.7, -3.5, 1.3]];
		_backlightright lightAttachObject [_vehicle, [0.75, -3.5, 1.3]];
		{
			_x setLightAttenuation [0.181, 0, 1000, 130];
			_x setLightIntensity 10;
			_x setLightFlareSize 0.38;
			_x setLightFlareMaxDistance 150;
			_x setLightUseFlare true;
			_x setLightDayLight true;
		} forEach [_toplightleft,_backlightleft,_toplightright,_backlightright];
	};
};

{
	_x setLightAttenuation [0.181, 0, 1000, 130];
	_x setLightIntensity 10;
	_x setLightFlareSize 0.38;
	_x setLightFlareMaxDistance 150;
	_x setLightUseFlare true;
	_x setLightDayLight true;
} forEach [_lightleft,_lightright];
		
if (sunOrMoon < 1) then {
	_brightness = 6;
} else {
	_brightness = 50;
};

_active = true;
while {(alive _vehicle)} do { 
	// hint format ["DEBUG: lights: %1 \n Vehicle Player: %2",!(_vehicle getVariable "lights"),!(vehicle player !=player)];
	if (!(_vehicle getVariable "lights")) exitWith {};
	if(_active) then  
	{  
		_leftRed = false;  
		_lightright = setLightBrightness 0;
		_tlightright = setLightBrightness 0;
		_blightright = setLightBrightness 0;
		sleep 0.05;
		_lightleft = setLightBrightness _brightness;
		_tlightleft = setLightBrightness _brightness;
		_balightleft = setLightBrightness _brightness;
	} 
	else 
	{  
		_leftRed = true;  
		_lightleft = setLightBrightness 0;
		_tlightleft = setLightBrightness 0;
		_blightleft = setLightBrightness 0;
		sleep 0.05;
		_lightright = setLightBrightness _brightness;
		_tlightright = setLightBrightness _brightness;
		_blightright = setLightBrightness _brightness;
	}; 
	sleep 0.22;  
};  
{ deleteVehicle _x } foreach [_lightleft, _lightright, _tlightleft, _tlightright, _blightleft, _blightright];