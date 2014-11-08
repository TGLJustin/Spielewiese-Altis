/*
	File: welcome.sqf
	Author: Triotexx
	Date: 26.6.2014
*/

//Start erst nach Spawn
waitUntil{ !isNull(findDisplay 38500)};
waitUntil{ isNull(findDisplay 38500)};

//Sound
playSound "welcome";

_onScreenTime = 2;

_role1 = "Willkommen bei";
_role1names = ["S P I E L E W I E S E"];
_role2 = "Server Inhaber";
_role2names = ["TRIOTEXX, Mr.Jesus,ZacWinder und Happydemons"];
_role3 = "Map Edit by";
_role3names = ["Triotexx"];
_role4 = "Offizieller TeamSpeak";
_role4names = ["78.143.39.184:18700"];
_role8 = "Offizielles Forum";
_role8names = ["http://spielewiese.yooco.de"];
 _role9 = "Server Restarts";
_role9names = ["0,6,12,18,21"];

{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.50' color='#1866c7' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role8, _role8names],
[_role9, _role9names]
];