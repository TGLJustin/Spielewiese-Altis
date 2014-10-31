/*
	File: fn_fetchSyncidates.sqf
	Author: Torsten "Demon" Ennenbach
	
	Description:
	Fetches the Syndicate Data to each connected Client all 3 minutes
	Now we can 
*/


// NOT YET FINISHED

private["_name","_member"];

 _query = ["select id, ident, playerlist from syndicates"];

_syndicates = _queryResult;
while {true} do {

	 waitUntil{sleep (random 0.3); !DB_Async_Active};
	_queryResult = [_query,2,true] call DB_fnc_asyncCall;

	if(count _queryResult == 0) exitWith {};
	diag_log "------------- Client Query Request -------------";
	diag_log format["QUERY: %1",_query];
	diag_log format["Result: %1",_queryResult];
	diag_log "------------------------------------------------";


	{
		_member = call compile format["%1",_x select 2];
		_name = [_x select 1];

	} foreach _syndicates;


sleep 240;
};
