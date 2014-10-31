/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
	// Autohändler
	case "B_Quadbike_01_F": {50}; // Quad
	case "C_Hatchback_01_F": {100}; // Limousine
	case "C_Hatchback_01_sport_F": {150}; // Limousine Sport
	case "C_Offroad_01_F": {200}; // Geländewagen / Offroader
	case "C_SUV_01_F": {150}; // SUV
	case "C_Van_01_transport_F": {250}; // Truck
	case "C_Van_01_box_F": {300}; // Truck Box
	case "B_Truck_01_medical_F": {300}; // Medical Truck Box
	case "O_MRAP_02_F": {150}; // Strider
	case "I_MRAP_03_F": {150}; // Ifrit
	case "O_MRAP_02_hmg_F": {150}; // Ifrit HMG
	
	// LKW Händler
	case "I_Truck_02_transport_F": {400}; // Zamak
	case "I_Truck_02_covered_F": {500}; // Zamak abgedeckt
	case "B_Truck_01_transport_F": {600}; // Hemmt
	case "B_Truck_01_covered_F": {700}; // Hemmt abgedeckt
	case "B_Truck_01_ammo_F": {700}; // Hemmt Munition
	case "B_Truck_01_box_F": {800}; // Hemmt Box
	case "B_Truck_01_fuel_F": {800}; // Hemmt Tanker
	case "O_Truck_03_transport_F": {900}; // Tempest
	case "O_Truck_03_ammo_F": {900}; // Tempest Munition
	case "O_Truck_03_covered_F": {1000}; // Tempest abgedeckt
	case "O_Truck_03_fuel_F": {1000}; // Tempest Tanker
	case "O_Truck_03_device_F": {1200}; // Tempest Gerät
	
	// Helikopter
	case "B_Heli_Light_01_F": {150}; // Hummingbird
	case "O_Heli_Light_02_F": {250}; // Orca
	case "I_Heli_light_03_F": {275}; // Hellcat
	case "I_Heli_Transport_02_F": {350}; // Mohawk
	
	// Schiffe
	case "C_Rubberboat": {50}; // Rettungsboot
	case "C_Boat_Civil_01_F": {200}; // Motorboot
	
	// Flugzeuge
	
	
	
	default {-1};
};