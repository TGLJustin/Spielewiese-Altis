/*
	File: welcomecredits.sqf
	Author: HellsGateGaming.com
	Edit: RenildoMarcio
	Date: 09/05/2014
	Description:
	Creates an intro on the bottom-right hand corner of the screen.
*/
private["_onScreenTime",
"_role1",
"_role1names",
"_role2",
"_role2names",
"_role3",
"_role3names",
"_role4",
"_role4names",
"_role5",
"_role5names",
"_role6",
"_role6names",
"_role7",
"_role8names",
"_role9",
"_role9names",
"_role10",
"_role10names",
"_role11",
"_role11names",
"_role12",
"_role12names",
"_role13",
"_role13names",
"_role14",
"_role14names",
"_role15",
"_role15names",
"_memberFunction",
"_memberNames",
"_finalText"];
_onScreenTime = 4;

sleep 10; //Wait in seconds before the credits start after player is in-game
 
if(life_firstSpawn) then {
	life_firstSpawn = false;
	// ES NERVT :D 
	//playSound ["intro",true];
};



_role1 = "Willkommen auf dem Spielewiese Altis Life Server:";
_role1names = ["Altis Life RPG by Tonic"];
_role2 = "Eure Admins:";
_role2names = ["Justin, Dominik, rene.w, Georg"];
_role3 = "Website:";
_role3names = ["www.http://spielewiese.yooco.de"];
_role4 = "Map/Scripts:";
_role4names = ["Triotexx","[SD] Demon","Thanit","Tanmar"];
_role5 = "Teamspeak:";
_role5names = ["78.143.39.184:18700"];
_role6 = "Supporter:";
_role6names = ["NicNac","Kirby"];
_role7 = "Der Server Ihres Vertrauens!";
_role7names = ["85.131.221.252:2302"];
_role8 = "SpieleWiese";
_role8names = ["supported by A4P"];
_role9 = "Created by:";
_role9names = ["TAW_Tonic"];
_role10 = "Riesen Dank an:";
_role10names = ["A4P","und","SD"];
_role11 = "Directed by:";
_role11names = ["Justin Jaworski"];
_role12 = "Special thanks to:";
_role12names = ["TAW_Tonic","Triotexx","nameless-gaming.org","LT. Schelby(Skins)"];
_role13 = "Polizeileiter:";
_role13names = ["Mr.Jesus"];
_role14 = "Notarztleiter:";
_role14names = ["Colddead"];
_role15 = "ADAC";
_role15names = ["Jeff Stone"];




{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.65' color='#FFFFFF' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.80' color='#FF0000' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.9);
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
	[_role5, _role5names],
	[_role6, _role6names]
];