/*
	File: fn_sendChannel.sqf
	Author: alleskapot & Lifted
	Thanks again for all the help alleskapot!
	Description:
	Ermöglicht senden bzw. die Abfrage des Geschriebenen.
*/

private["_message"];
disableSerialization;

waitUntil {!isnull (findDisplay 9000)};

if (life_cash < 80000 ) exitWith { systemChat "Du brauchst 80000 um eine Nachricht zu senden!"; };
if (playerSide != civilian ) exitWith { systemChat "Du musst ein Zivilist sein!"; };
life_cash = life_cash - 80000;

_message = ctrlText 9001;

[[3,format ["%1 sendete folgende Nachricht von Chanel 7 News an Alle: %2",name player,_message]],"life_fnc_broadcast",true,false] call life_fnc_MP;
life_channel_send = false;

[] spawn
{
	sleep 600;
	life_channel_send = true;
};
