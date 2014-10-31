/*
	File: fn_welcomeNotification.sqf
	
	Description:
	Called upon first spawn selection and welcomes our player.
*/
format["Willkommen %1, Bitte folgendes durchlesen!",player getVariable["realname",name player]] hintC
[
	"Willkommen auf unserem Spielewiese Life RPG Server.",
	"Teamspeak IP : 78.143.39.184:18700",
	"Die REGELN bitte unbedingt durchlesen!",
	"Q = Sammeln | U = Öffnet Türen (Haus/Fahrzeug)",
	"Shift + T = Ergeben | + G = Knockout (Civ) | Shift/Strg + H = Waffe holstern/unholstern | Shift + R = Festnehmen!",
	"Deine Fahrzeuge bleiben kaputt wenn der Server neu startet! Nutze den ADAC"
];
