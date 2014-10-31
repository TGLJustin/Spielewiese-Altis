/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Wochenmarkt",["water","rabbit","apple","redgull","tbacon","peach","pickaxe","fuelF","fishingpoles","storagesmall","storagebig"]]};
	case "rebel": {["Rebellenhändler",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge","storagesmall","storagebig"]]};
	case "gang": {["Gang Markt", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter","storagesmall","storagebig"]]};
	case "wongs": {["Wongs Spezialitäten",["turtlesoup","turtle","moonshine","zigarren"]]};
	case "coffee": {["Kaffee Klatsch",["coffee","donuts"]]};
	case "heroin": {["Drogendealer",["cocainep","heroinp","marijuana","methp","froglsd","uranp","kokain","kokainc","scoobysnax"]]};
	case "oil": {["Ölhändler",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Fischmarkt",["fishingpoles","salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Glas Händler",["glass"]]};
	case "iron": {["Eisen Händler",["iron_r","copper_r"]]};
	case "diamond": {["Diamanten Händler",["diamond","diamondc"]]};
	case "salt": {["Salz Händler",["salt_r"]]};
	case "cop": {["Polizei Shop",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","defusekit"]]};
	case "cement": {["Zement Händler",["cement"]]};
	case "goldbar": {["Goldbarren Händler",["goldbar"]]};
	case "gas": {["Tankstellen Shop",["water","rabbit","apple","redgull","tbacon","fuelF","peach"]]};

	// MORE JOBS CONFIG
	case "adac": {["ADAC Shop",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","lockpick"]]};
	case "sugar": {["Zuckerhändler",["sugar","sugarc"]]};
	case "silver": {["Silberhändler",["silver","silverc"]]};
	case "gold": {["Goldhändler",["gold", "goldc"]]};
	case "Schwarzmarkt": {["Schwarzmarkt",["warhead","zigarren"]]};
	case "Kraftwerk": {["Kraftwerk",["uran238"]]};
	case "beer": {["Alkohol Verkauf",["wine"]]};
	case "zigaretten": {["Zigarettenverkauf",["zigaretten"]]};

	case "adacshop": {["ADAC Shop",["water","rabbit","apple","redgull","tbacon","fuelF","peach"]]};
	case "medicshop": {["Medic Shop",["water","rabbit","apple","redgull","tbacon","fuelF","peach"]]};
	case "Prospector": {["Gold Ingot Dealer",["goldbarp"]]};
	case "bar": {["The Lounge",["bottledbeer"]]};
    case "flints": {["Speakeasy's",["bottledwhiskey","bottledshine"]]};
    case "organ": {["Organ Händler",["kidney"]]};
	case "bier": {["Schenke",["beerp"]]};
};
