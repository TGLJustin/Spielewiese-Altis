/*
    GrenadeStop v0.8 for ArmA 3 Alpha by Bake (tweaked slightly by Rarek)
    
    DESCRIPTION:
    Stops players from throwing grenades in safety zones.
    
    CONFIGURATION:
    Edit the #defines below.
*/

#define SAFETY_ZONES    [["Safe_Kav", 400],["Rebellst", 400],] 
// - not using - #define MESSAGE "This is a SAFE ZONE - No Stealing, No Knocking Out, NO SHOOTING, No VDM - You have been warned"

if (isDedicated) exitWith {};
waitUntil {!isNull player};
if(playerSide == civ) then {
		player addEventHandler ["Fired", {
			if ({(_this select 0) distance getMarkerPos (_x select 0) < _x select 1} count SAFETY_ZONES > 0) then
			{
				deleteVehicle (_this select 6);
				hint parseText format["<t color='#FFFFFF'><t align='center'><t size='1'>DU BIST IN EINER<br/><t color='#FF0000'><t size ='2.5'<t align='center'>Safe Zone<br/><t color='#FFFFFF'><t align='center'><t size='1.5'>Nicht Schiessen<br/><t color='#FFFFFF'><t align='center'><t size='1.5'>Keine KnockOuts<br/><t color='#FFFFFF'><t align='center'><t size='1.5'>Kein Stehlen<br/><t color='#FFFFFF'><t align='center'><t size='1.5'>Kein Stealing<br/><t color='#FFFFFF'><t align='center'><t size='1.5'>Kein Trolling<br/><t color='#FFFFFF'><t align='center'><t size='.4'>Spielewiese"];
				//titleText [MESSAGE, "PLAIN", 3];
			};
		}];  

	};