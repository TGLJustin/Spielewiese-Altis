/*
	File: fn_keyHandler.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main key handler for event 'keyDown'
*/
private ["_handled","_shift","_alt","_code","_ctrl","_alt","_ctrlKey","_veh","_locked","_interactionKey","_mapKey","_interruptionKeys","_player","_params","_position","_sweapon"];
_ctrl = _this select 0;
_code = _this select 1;
_shift = _this select 2;
_ctrlKey = _this select 3;
_alt = _this select 4;
_speed = speed cursorTarget;
_handled = false;
_player = player;
_interactionKey = if(count (actionKeys "User10") == 0) then {219} else {(actionKeys "User10") select 0};
_mapKey = actionKeys "ShowMap" select 0;
//hint str _code;
_interruptionKeys = [17,30,31,32]; //A,S,W,D

//Vault handling...
if((_code in (actionKeys "GetOver") || _code in (actionKeys "salute")) && {(player getVariable ["restrained",false])}) exitWith {
	true;
};

if(life_action_inUse) exitWith {
	if(!life_interrupted && _code in _interruptionKeys) then {life_interrupted = true;};
	_handled;
};

//Hotfix for Interaction key not being able to be bound on some operation systems.
if(count (actionKeys "User10") != 0 && {(inputAction "User10" > 0)}) exitWith {
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	if(!life_action_inUse) then {
		[] spawn 
		{
			private["_handle"];
			_handle = [] spawn life_fnc_actionKeyHandler;
			waitUntil {scriptDone _handle};
			life_action_inUse = false;
		};
	};
	true;
};

switch (_code) do
{
	//Space key for Jumping
	case 57:
	{
		if(isNil "jumpActionTime") then {jumpActionTime = 0;};
		if(_shift && {animationState player != "AovrPercMrunSrasWrflDf"} && {isTouchingGround player} && {stance player == "STAND"} && {speed player > 2} && {!life_is_arrested} && {(velocity player) select 2 < 2.5} && {time - jumpActionTime > 1.5}) then {
			jumpActionTime = time; //Update the time.
			[player,true] spawn life_fnc_jumpFnc; //Local execution
			[[player,false],"life_fnc_jumpFnc",nil,FALSE] call life_fnc_MP; //Global execution 
			_handled = true;
		};
	};
	
	//Map Key
	case _mapKey:
	{
		switch (playerSide) do 
		{
			case west: {
				if(!visibleMap) then {
					[] spawn life_fnc_copMarkers;
					[] spawn life_fnc_medicMarkers;
				}
			};
			case independent: {
				if(!visibleMap) then {
					[] spawn life_fnc_medicMarkers;
				}
			};
			case east: {
				if(!visibleMap) then {
					[] spawn life_fnc_adacMarkers;
				}
			};
			//*Gangmarker
            if(playerSide == civilian && !visibleMap) then {
            	[] spawn life_fnc_groupMarkers;
        };
		};
	};
	
	//Holster / recall weapon.
	case 35:
	{
		if(_shift && !_ctrlKey && currentWeapon player != "") then {
				life_curWep_h = currentWeapon player;
				player action ["SwitchWeapon", player, player, 100];
				//player switchcamera cameraView;
		};
		
		if(!_shift && _ctrlKey && !isNil "life_curWep_h" && {(life_curWep_h != "")}) then {
				if(life_curWep_h in [primaryWeapon player,secondaryWeapon player,handgunWeapon player]) then {
					player selectWeapon life_curWep_h;
			};
		};
	};
	
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	case _interactionKey:
	{
		if(!life_action_inUse) then {
			[] spawn 
			{
				private["_handle"];
				_handle = [] spawn life_fnc_actionKeyHandler;
				waitUntil {scriptDone _handle};
				life_action_inUse = false;
			};

        };

	};


    // O, police gate opener
    case 24:
	{
		if (!_shift && !_alt && !_ctrlKey && (vehicle player != player)) then {
			[] call life_fnc_copOpener;
		};
	};
	
	//Restraining (Shift + R)
	case 19:
	{
		if(_shift) then {_handled = true;};
		if(_shift && playerSide == west && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget in [civilian,independent]) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1) then
		{
			[] call life_fnc_restrainAction;
		};
	};
	
	//Knock out, this is experimental and yeah...
		//Knock out, this is experimental and yeah...
	case 34:
	{
		if(_shift) then {_handled = true;};
		if(_shift && !isNull cursorTarget && cursorTarget isKindOf "Man" && isPlayer cursorTarget && alive cursorTarget && cursorTarget distance player < 4 && speed cursorTarget < 1) then
		{
			if((animationState cursorTarget) != "Incapacitated" && (currentWeapon player == primaryWeapon player OR currentWeapon player == handgunWeapon player) && currentWeapon player != "" && !life_knockout && !(player getVariable["restrained",false]) && !life_istazed) then
			{
				[cursorTarget] spawn life_fnc_knockoutAction;
			};
		};
	};

	//T Key (Trunk)
	case 20:
	{
		if(!_alt && !_ctrlKey) then
		{
			if(vehicle player != player && alive vehicle player) then
			{
				if((vehicle player) in life_vehicles) then
				{
					[vehicle player] call life_fnc_openInventory;
				};
			}
				else
			{
				if((cursorTarget isKindOf "Car" OR cursorTarget isKindOf "Air" OR cursorTarget isKindOf "Ship" OR cursorTarget isKindOf "House_F") && player distance cursorTarget < 7 && vehicle player == player && alive cursorTarget) then
				{
					if(cursorTarget in life_vehicles OR {!(cursorTarget getVariable ["locked",true])}) then
					{
						[cursorTarget] call life_fnc_openInventory;
					};
				};
			};
		};
		//Surrender
		if(_shift) then {_handled = true;};
		
		if (_shift) then
		{
			if (vehicle player == player && !(player getVariable ["restrained", false]) && (animationState player) != "Incapacitated" && !life_istazed) then
			{
				if (player getVariable ["surrender", false]) then
				{
					player setVariable ["surrender", false, true];
				} else
				{
					[] spawn life_fnc_surrender;
				};
			};
		};
	};
	//L Key?
	case 38: 
	{
		//If cop run checks for turning lights on.
		if(_shift && playerSide in [west,independent,east]) then {
			if(vehicle player != player && (typeOf vehicle player) in ["B_Quadbike_01_F","C_SUV_01_F","C_Hatchback_01_sport_F","C_Offroad_01_F","B_MRAP_01_F","I_MRAP_03_F","O_MRAP_02_F","B_MRAP_01_hmg_F","I_MRAP_03_hmg_F","O_MRAP_02_hmg_F","O_APC_Wheeled_02_rcws_F","C_Van_01_box_F","O_G_Offroad_01_repair_F"]) then {
				if(!isNil {vehicle player getVariable "lights"}) then {
					if(playerSide == west) then {
						[vehicle player] call life_fnc_sirenLights;
					};
					if (playerSide == independent) then {
						[vehicle player] call life_fnc_medicSirenLights;
					};
					if (playerSide == east) then {
						[vehicle player] call life_fnc_adacSirenLights;
					};
					_handled = true;
				};
			};
		};
		
		if(!_alt && !_ctrlKey) then { [] call life_fnc_radar; };
	};
	//Y Player Menu
	case 21:
	{
		if(!_alt && !_ctrlKey && !dialog) then
		{
			[] call life_fnc_p_openMenu;
		};
	};
	
	//F Key - Siren in Vehicle 
	case 33:
	{
	//Yelp
		if(_shift) then
            {
                if(playerSide == west && vehicle player != player && !life_siren2_active && ((driver vehicle player) == player)) then
                {
                    [] spawn
                    {
                        life_siren2_active = true;
                        sleep 4.7;
                        life_siren2_active = false;
                    };
                    _veh = vehicle player;
                    if(isNil {_veh getVariable "siren2"}) then {_veh setVariable["siren2",false,true];};
                    if((_veh getVariable "siren2")) then
                    {
                        titleText ["Yelp Aus","PLAIN"];
                        _veh setVariable["siren2",false,true];
                    }
                        else
                    {
                        titleText ["Yelp Ein","PLAIN"];
                        _veh setVariable["siren2",true,true];
                        [[_veh],"life_fnc_copSiren2",nil,true] spawn life_fnc_MP;
                    };
                };
				
				/* if (playerSide == west) then {
			
					if(!allowedToAnnouncecop) exitWith {hint "Du hast schon eine Nachricht geschickt, warte bitte 30 Sekunden!"};
			
					allowedToAnnouncecop = false;
					[] spawn {
						sleep 30;
						allowedToAnnouncecop = true;
					};
						
					[8,cursorTarget,""] call life_fnc_newMsg;
			
				};*/
           };
		   
	//Fu
		if(_ctrlKey) then
            {
                if(playerSide == west && vehicle player != player && !life_siren3_active && ((driver vehicle player) == player)) then
                {
                    [] spawn
                    {
                        life_siren3_active = true;
                        sleep 4.7;
                        life_siren3_active = false;
                    };
                    _veh = vehicle player;
                    if(isNil {_veh getVariable "siren3"}) then {_veh setVariable["siren3",false,true];};
                    if((_veh getVariable "siren3")) then
                    {
                        titleText ["Fu Aus","PLAIN"];
                        _veh setVariable["siren3",false,true];
                    }
                        else
                    {
                        titleText ["Fu Ein","PLAIN"];
                        _veh setVariable["siren3",true,true];
                        [[_veh],"life_fnc_copSiren3",nil,true] spawn life_fnc_MP;
                    };
                };
           };

	//Sirene
		if (!_shift && !_ctrlKey) then
			{
				if(playerSide in [west,independent] && vehicle player != player && !life_siren_active && ((driver vehicle player) == player)) then
				{
					[] spawn
					{
						life_siren_active = true;
						sleep 4.7;
						life_siren_active = false;
					};
						_veh = vehicle player;
						if(isNil {_veh getVariable "siren"}) then {_veh setVariable["siren",false,true];};
					if((_veh getVariable "siren")) then
					{
						titleText [localize "STR_MISC_SirensOFF","PLAIN"];
						_veh setVariable["siren",false,true];
					}
					else
					{
						titleText [localize "STR_MISC_SirensON","PLAIN"];
						_veh setVariable["siren",true,true];
					if(playerSide == west) then {
						[[_veh],"life_fnc_copSiren",nil,true] spawn life_fnc_MP;
					} else 
						{
						//I do not have a custom sound for this and I really don't want to go digging for one, when you have a sound uncomment this and change medicSiren.sqf in the medical folder.
						[[_veh],"life_fnc_medicSiren",nil,true] spawn life_fnc_MP;
						};
					};
				};
			};
	};
	
	//U Key
	case 22:
	{
		if(!_alt && !_ctrlKey) then {
			if(vehicle player == player) then {
				_veh = cursorTarget;
				diag_log "CURSOR TARGET";
			} else {
				_veh = vehicle player;
				diag_log "VEHICLE PLAYER";
			};
			
			if(_veh isKindOf "House_F" && playerSide == civilian) then {
				if(_veh in life_vehicles && player distance _veh < 8) then {
					_door = [_veh] call life_fnc_nearestDoor;
					if(_door == 0) exitWith {hint localize "STR_House_Door_NotNear"};
					_locked = _veh getVariable [format["bis_disabled_Door_%1",_door],0];
					if(_locked == 0) then {
						_veh setVariable[format["bis_disabled_Door_%1",_door],1,true];
						_veh animate [format["door_%1_rot",_door],0];
						systemChat localize "STR_House_Door_Lock";
					} else {
						_veh setVariable[format["bis_disabled_Door_%1",_door],0,true];
						_veh animate [format["door_%1_rot",_door],1];
						systemChat localize "STR_House_Door_Unlock";
					};
				};
			} else {

				diag_log "LOCK/UNLOCK";
				_locked = locked _veh;
				if(_veh in life_vehicles && player distance _veh < 8) then {
					diag_log "NOT ELSE";
					if(_locked == 2) then {
						diag_log "locked = 2";
						if(local _veh) then {
							_veh lock 0;
						} else {
							[[_veh,0],"life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
						};
						systemChat localize "STR_MISC_VehUnlock";
						_veh say3D "unlock_sound";

					} else {
					diag_log "ELSE?";
						if(local _veh) then {
							_veh lock 2;
						} else {
							[[_veh,2],"life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
						};	
						systemChat localize "STR_MISC_VehLock";

						_veh say3D "lock_sound";
					};
				};



			};
			diag_log format["VEHICLE TRUNK AFTER SPAWN CLIENTSIDE: %1", [_veh getVariable["Trunk",[]]]];
		};
	};



	case 62:
    {
    if(_alt && !_shift) then {
	    diag_log format ["SERVER MSG: %1 Benutzt ALT+F4 (Report an die Admins)",_player getVariable["realname",name _player]];
	    [[1,format["SERVER MSG: %1 Benutzt ALT+F4 (Report an die Admins)",_player getVariable["realname",name _player]]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
	    };
    };
    case 211:
    {
    if(_ctrlKey && _alt)  then {
	    diag_log format ["SERVER MSG: %1 Benutzt CTRL + ALT + DEL (report an die Admins)",_player getVariable["realname",name _player]];
	    [[1,format["SERVER MSG: %1 Benutzt CTRL + ALT + DEL (report an die Admins)",_player getVariable["realname",name _player]]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
	    };
    };
    case 1:
    {
    if( _ctrlKey )  then {
	    diag_log format ["SERVER MSG: %1 Benutzt CTRL + ESC (report an die Admins)",_player getVariable["realname",name _player]];
	    [[1,format["SERVER MSG: %1 Benutzt CTRL + ESC (report an die Admins)",_player getVariable["realname",name _player]]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
	    };
    };

	//Q Key
	case 16:
	{
		if((!life_action_gather) && (vehicle player == player)) then
        {
        	if(life_inv_pickaxe > 0) then
            {
            	[] spawn life_fnc_pickAxeUse;
        	};
        };
	};
};



_handled;