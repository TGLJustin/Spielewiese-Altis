#include <macro.h>
/*
  
  file: fn_newMsg.sqf
  Author: Silex
  
*/

private["_to","_type","_playerData","_msg"];
disableSerialization;

_type = [_this,0,-1] call BIS_fnc_param;
_playerData = [_this,1,-1] call BIS_fnc_param;
_msg = [_this,2,"",[""]] call BIS_fnc_param;

_display = findDisplay 88888;
_cPlayerList = _display displayCtrl 88881;
_cMessageEdit = _display displayCtrl 88884;

switch(_type) do
{
  case 0:
  {
    life_smartphoneTarget = call compile format["%1",_playerData];
    ctrlSetText[88886, format["Nachricht an: %1",name life_smartphoneTarget]];
    if((__GETC__(life_adminlevel) < 1)) then
    {
      ctrlShow[888897,false];
    };
  };
  //normal message
  case 1:
  {
    if(isNUll life_smartphoneTarget) exitWith {hint format["Keine Person ausgewählt!"];};
    ctrlShow[88885, false];
    if(_msg == "") exitWith {hint "Du musst eine Nachricht eingeben!";ctrlShow[88885, true];};
    [[life_smartphoneTarget,_msg,player,0],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
    hint format["Du hast an %1 folgende Nachricht gesendet: %2",name life_smartphoneTarget,_msg]; 
    ctrlShow[88885, true];
    closeDialog 88883;
  };
  //copmessage
  case 2:
  {
    if(({side _x == west} count playableUnits) == 0) exitWith {hint format["Die Polizei ist derzeit nicht zu erreichen. Bitte versuchen Sie es später nochmal."];};
    ctrlShow[888895,false];
    if(_msg == "") exitWith {hint "Du musst eine Nachricht eingeben!";ctrlShow[888895,true];};
    [[ObjNull,_msg,player,1],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
    _to = "The Police";
    hint format["Du hast an %1 folgende Nachricht gesendet: %2",_to,_msg];
    ctrlShow[888895,true];
    closeDialog 887890;
  };
  //msgadmin
  case 3:
  {
    ctrlShow[888896,false];
    if(_msg == "") exitWith {hint "Du musst eine Nachricht eingeben!";ctrlShow[888896,true];};
    [[ObjNull,_msg,player,2],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
    _to = "The Admins";
    hint format["Du hast an %1 folgende Nachricht gesendet: %2",_to,_msg];
    ctrlShow[888896,true];
    closeDialog 887890;
  };
  //emsrequest
  case 4:
  {
    if(({side _x == independent} count playableUnits) == 0) exitWith {hint format["Zurzeit ist kein Arzt im Dienst. Bitte probiere es später nochmal."];};
    ctrlShow[888899,false];
    if(_msg == "") exitWith {hint "Du musst eine Nachricht eingeben!";ctrlShow[888899,true];};
    [[ObjNull,_msg,player,3],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
    hint format["Du hast eine Nachricht an alle Notärzte geschickt.",_msg];
    ctrlShow[888899,true];
    closeDialog 887890;
  };
  //adminToPerson
  case 5:
  {
    if((call life_adminlevel) < 1) exitWith {hint "Du bist kein Admin!";};
    if(isNULL life_smartphoneTarget) exitWith {hint format["Keine Person ausgewählt!"];};
    if(_msg == "") exitWith {hint "Du musst eine Nachricht eingeben!";};
    [[life_smartphoneTarget,_msg,player,4],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
    hint format["ADMIN Nachricht von: %1 - Nachricht: %2",name life_smartphoneTarget,_msg];
    closeDialog 88883;
  };
  //emergencyloading
  case 6:
  {
    if((__GETC__(life_adminlevel) < 1)) then
    {
      ctrlShow[888898,false];
      ctrlShow[888896,true];
    } else {
      ctrlShow[888898,true];
      ctrlShow[888896,false];
    };
  };
  //adminMsgAll
  case 7:
  {
    if((call life_adminlevel) < 1) exitWith {hint "Du bist kein Admin!";};
    if(_msg == "") exitWith {hint "Du musst eine Nachricht eingeben!";};
    [[ObjNull,_msg,player,5],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
    hint format["ADMIN Nachricht an alle: %1",_msg];
    closeDialog 887890;
  };
  case 8:
	{
		ctrlShow[888899,false];
		_msg = format ["<t align='left'><t size='1.1' color='#ff0000'><t underline='true'>%1</t> befindet sich in Ihrer Nähe und hat sie aufgefordert stehen zubleiben!</t><br/>" , name player];
		
		_near_units = [];
		_near = [];
		_players = "";
		_near_names = "<t color='#FF0000'><t size='2'><t align='left'>Cop Message<br/><br/></t></t></t><t align='left'>Folgende Personen hat deine Ankündigung erreicht:<br/><br/>";
		{ if(player distance _x < 50) then {_near_units set [count _near_units,_x];};} foreach playableUnits;
		{
			if(!isNull _x && alive _x && player distance _x < 50 && _x != player) then
			{
				_near = _near + [_x];
				_near_names = _near_names + format['- %1<br/>', name _x];
				_players = _players + format["%1 - ", name _x];
			};
		} foreach _near_units;
		
		_near_names = _near_names + "<br/><t color='#ff0000'>Bitte achtet auf euer Roleplay!</t></t>";
		hint parseText format['%1', _near_names];
		[[ObjNull,_msg,player,8,_near],"GHB_fnc_handleMessages",false] spawn life_fnc_MP;
		closeDialog 887890;
	};
};