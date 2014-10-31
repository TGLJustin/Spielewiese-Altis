enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.4.7";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "zlt_fieldrepair.sqf";


if(isDedicated && isNil("life_market_prices")) then
{
	[] call life_fnc_marketConfiguration;
	diag_log "Market prices generated!";
		//Start server fsm
	[] execFSM "core\fsm\server.fsm";
	diag_log "Server FSM executed";
};

[] execVM "zlt_fastrope.sqf";

if(!StartProgress) then
{
	[8,true,true,12] execFSM "core\fsm\timeModule.fsm";
	//[8,true,false] execFSM "core\fsm\core_time.fsm";
};
StartProgress = true;


[] execVM "NamelessGaming\PlayersStats.sqf"; // Anzeige Spieler Online
[] execVM "NamelessGaming\FPS.sqf"; // FPS
[] execVM "zlt_fieldrepair.sqf";
[] execVM "scripts\fn_statusBar.sqf"; //Load the Statusbar
[] execVM "scripts\unfall.sqf"; //Load the Statusbar

execVM "NamelessGaming\DynamicWeatherEffects.sqf"; //Dynamisches Wetter laden

/*MAC_fnc_switchMove = {
    private["_object","_anim"];
    _object = _this select 0;
    _anim = _this select 1;

    _object switchMove _anim;
    
};*/

fn_whoDunnit = compile preprocessFileLineNumbers "scripts\fn_whoDunnit.sqf"; //DIAG_LOG kill message 

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};

[] execVM "scripts\radartrap.sqf";

setTerrainGrid 50;