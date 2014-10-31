/*
File: fn_vehicleColorCfg.sqf
Author: Bryan "Tonic" Boardwine
I_Heli_Transport_02_F
Description:
Master configuration for vehicle colors.
*/
private["_vehicle","_ret","_path","_path2"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
if(_vehicle == "") exitWith {[]};
_ret = [];


// BLACK: 			["#(rgb,1,1,1)color(0,0,0,1)","cop"],


switch (_vehicle) do
{
	//leichte Fahrzeuge:
	
	//Quadbike
	case "B_Quadbike_01_F":
	{
	_path = "\A3\Soft_F_beta\Quadbike_01\Data\";
	_ret =
		[
			[_path + "quadbike_01_civ_black_co.paa","civ"],
			[_path + "quadbike_01_civ_blue_co.paa","civ"],
			[_path + "quadbike_01_civ_white_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","civ"]
		];
	};
	
	//SUV
	case "C_SUV_01_F":
	{
	_path = "textures\CIV\SUV\";
	_ret =
		[
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa","civ"],
			[_path + "ferrari_suv.jpg","civ"],
			[_path + "suv_batman.jpg","civ"],
			[_path + "suv_benz.jpg","civ"],
			[_path + "SUV_Flames.paa","civ"],
			[_path + "suv_flamme.jpg","civ"],
			[_path + "suv_joker.jpg","civ"],
			[_path + "suv_regenbogen.jpg","civ"],
			[_path + "suv_rosti.jpg","civ"],
			[_path + "suv_superman.jpg","civ"],
			["textures\COP\Vehicles\SUV\cop_suv.jpg","cop"],
			["textures\MED\suv_medic.jpg","med"]
		];
	};
	
	//Limousine
	case "C_Hatchback_01_F":
	{
	_path = "\a3\soft_f_gamma\Hatchback_01\data";
	_path2 = "textures\CIV\Hatchback-Limousine\";
	_ret =
		[
			[_path + "hatchback_01_ext_base03_co.paa","civ"],
			[_path + "hatchback_01_ext_base04_co.paa","civ"],
			[_path + "hatchback_01_ext_base06_co.paa","civ"],
			[_path + "hatchback_01_ext_base08_co.paa","civ"],
			[_path2 + "Hatchback_Balls.paa","civ"],
			[_path2 + "Hatchback_red.paa","civ"],
			[_path2 + "redbull.jpg","civ"],
			[_path2 + "sport_monsta.jpg","civ"]
		];
	};
	
	//Sport-Limousine
	case "C_Hatchback_01_sport_F":
	{
	_path = "\a3\soft_f_gamma\Hatchback_01\data\";
	_ret =
		[
			[_path + "hatchback_01_ext_sport01_co.paa","civ"],
			[_path + "hatchback_01_ext_sport02_co.paa","civ"],
			[_path + "hatchback_01_ext_sport03_co.paa","civ"],
			[_path + "hatchback_01_ext_sport04_co.paa","civ"],
			["textures\CIV\hatchback_sport_ken_block.jpg","civ"],
			["textures\COP\Vehicles\Sportlimo\hatchbackpol.jpg","cop"]
		];
	};

	//Offroader
	case "C_Offroad_01_F":
	{
	_path = "textures\CIV\Offroader\";
	_ret =
		[
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_base04_co.paa", "civ"],
			["textures\COP\Vehicles\Offroader\police_offroad.jpg","cop"],
			[_path + "bear_offroad.jpg","civ"],
			[_path + "monsterenergy_off.jpg","civ"],
			[_path + "offroad_energy.jpg","civ"],
			[_path + "road_camo.jpg","civ"],
			[_path + "road_comic.jpg","civ"],
			[_path + "road_kiff.jpg","civ"],
			[_path + "road_redspike.jpg","civ"],
			[_path + "road_stachel.jpg","civ"],
			[_path + "road_yinyang.jpg","civ"]
		];
	};
	
	//Offroader Repair (ADAC)
	case "O_G_Offroad_01_repair_F":
	{
	_ret =
		[
			["textures\ADAC\adac_offroad.jpg","adac"]
		];
	};

	//schwere Fahrzeuge:
	
	//unbewaffnet:
	
	//Hunter
	case "B_MRAP_01_F":
	{
	_ret =
		[
			["textures\COP\Vehicles\Hunter\hunter1.jpg","cop","textures\COP\Vehicles\Hunter\hunter2.jpg"]
		];
	};
	
	//Strider
	case "I_MRAP_03_F":
	{
	_path = "textures\CIV\Strider\";
	_path2 = "textures\REB\Strider\";
	_ret =
		[
			["textures\COP\Vehicles\Strider\copstrider.jpg","cop"],
			[_path + "civ_strider_gruen.jpg","civ"],
			[_path + "civ_strider_rot.jpg","civ"],
			[_path + "civ_strider_sand.jpg","civ"],
			[_path2 + "civ_strider_gruen.jpg","reb"],
			[_path2 + "civ_strider_rot.jpg","reb"],
			[_path2 + "civ_strider_sand.jpg","reb"]
			
		];
	};
	
	//Ifrit
	case "O_MRAP_02_F":
	{
	_path = "textures\CIV\Ifrit\";
	_ret =
		[
			["textures\COP\Vehicles\Ifrit\Ifrit_PD1.jpg","cop","textures\COP\Vehicles\Ifrit\Ifrit_PD2.jpg"],
			[_path + "ifrit_gelb_1.jpg","civ","textures\CIV\Ifrit\ifrit_gelb_2.jpg"],
			[_path + "ifrit_rot_1.jpg","civ","textures\CIV\Ifrit\ifrit_rot_2.jpg"],
			[_path + "ifrit_gruen_1.jpg","civ","textures\CIV\Ifrit\ifrit_gruen_2.jpg"],
			["textures\REB\Ifrit\rebell_ifrit_typ1_teil1.paa","reb","textures\REB\Ifrit\rebell_ifrit_typ1_teil2.paa"]
		];
	};
	
	//bewaffnet:
	
	//Hunter-HMG
	case "B_MRAP_01_hmg_F":
	{
	_ret =
		[
			["textures\COP\Vehicles\Hunter\hunter1.jpg","cop","textures\COP\Vehicles\Hunter\hunter2.jpg","textures\COP\Vehicles\turret_co_opti.jpg"]
		];
	};
	
	//Strider_HMG
	case "I_MRAP_03_hmg_F":
	{
	_ret =
		[
			["textures\COP\Vehicles\Strider\copstrider.jpg","cop","textures\COP\Vehicles\turret_co_opti.jpg"]
		];
	};
	
	//Ifrit-HMG
	case "O_MRAP_02_hmg_F":
	{
	_ret =
		[
			["\a3\soft_f\MRAP_02\Data\mrap_02_ext_01_co.paa","reb","\a3\soft_f\MRAP_02\Data\mrap_02_ext_02_co.paa"],
			["textures\COP\Vehicles\Ifrit\Ifrit_PD1.jpg","cop","textures\COP\Vehicles\Ifrit\Ifrit_PD2.jpg","textures\COP\Vehicles\turret_co_opti.jpg"]
		];
	};
	
	//Marid
	case "O_APC_Wheeled_02_rcws_F":
	{
	_ret =
		[
			["textures\COP\Vehicles\Marid\apc_wheeled_02_ext_01_opfor_co.jpg","cop","textures\COP\Vehicles\Marid\apc_wheeled_02_ext_02_opfor_co.jpg","#(rgb,1,1,1)color(0,0,0,1)"]
		];
	};

	//Trucks:
	
	//Truck Boxer
	case "C_Van_01_box_F":
	{
	_ret =
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"],
			["textures\MED\medic_van_1.jpg","med","textures\MED\medic_van_2.jpg"]
		];
	};
	
	//Truck (ohne Box)
	case "C_Van_01_transport_F":
	{
	_ret =
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};
	
	//Zamak abgedeckt
	case "I_Truck_02_covered_F":
	{
	_path = "textures\CIV\Zamak\";
	_ret =
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			[_path + "kamaz_gelb_kabine.jpg","civ",_path + "kamaz_gelb_aufbau.jpg"],
			[_path + "kamaz_rot_kabine.jpg","civ",_path + "kamaz_rot_aufbau.jpg"],
			[_path + "kamaz_weis_kabine.jpg","civ",_path + "kamaz_weis_aufbau.jpg"]
		];
	};
	
	//Zamak offen
	case "I_Truck_02_transport_F":
	{
	_ret =
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"]
		];
	};
	
	//Flugobjekte:
	
	//Hummingbird
	case "B_Heli_Light_01_F":
	{
	_path = "\a3\air_f\Heli_Light_01\Data\";
	_ret =
		[
			["textures\COP\Vehicles\Humming\heli_police_light_co.jpg","cop"],
			[_path + "heli_light_01_ext_blue_co.paa","civ"],
			[_path + "heli_light_01_ext_co.paa","civ"],
			[_path + "heli_light_01_ext_indp_co.paa","civ"],
			[_path + "Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			[_path + "Skins\heli_light_01_ext_jeans_co.paa","civ"],
			["textures\REB\Hummingbird\Hummingbird_Rebel_03.jpg","reb"],
			["textures\MED\medic_hbird.jpg","med"],
			["textures\ADAC\adac_humming.jpg","adac"],
			["#(rgb,1,1,1)color(0,0,0,1)","civ"]			

		];
	};
	
	//Orca
	case "O_Heli_Light_02_unarmed_F":
	{
	_path = "\a3\air_f\Heli_Light_02\Data\";
	_ret =
		[
			[_path + "heli_light_02_ext_co.paa","civ"],
			[_path + "heli_light_02_ext_civilian_co.paa","civ"],
			[_path + "heli_light_02_ext_indp_co.paa","civ"],
			["textures\CIV\Orca\orca_willi.jpg","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa","reb"],
			["textures\MED\medic_orca.jpg","med"],
			["textures\COP\Vehicles\Orca\orca_sek.jpg","cop"]
		];
	};
	
	//Hellcat (unbewaffnet)
	case "I_Heli_light_03_unarmed_F":
	{
	_ret =
		[
			["textures\COP\Vehicles\Hellcat\hellcat_PD.jpg","cop"],
			["textures\REB\Hellcat\Hellcat_Rebel_01.jpg","reb"]
		];
	};
	
	//Hellcat (bewaffnet)
	case "I_Heli_light_03_F":
	{
	_ret=
		[
			["textures\COP\Vehicles\Hellcat\hellcat_PD.jpg","cop"],
			["textures\REB\Hellcat\Hellcat_Rebel_01.jpg","reb"]
		];
	};
		
	//Mohawk
	case "I_Heli_Transport_02_F":
	{
	_path = "\a3\air_f_beta\Heli_Transport_02\Data\Skins\";
	_ret =
		[
			[_path + "heli_transport_02_1_ion_co.paa","civ",_path + "heli_transport_02_2_ion_co.paa",_path + "heli_transport_02_3_ion_co.paa"],
			[_path + "heli_transport_02_1_dahoman_co.paa","civ",_path + "heli_transport_02_2_dahoman_co.paa",_path + "heli_transport_02_3_dahoman_co.paa"],
			["textures\CIV\Mohawk\lav1_opti.jpg","civ","textures\CIV\Mohawk\lav2_opti.jpg","textures\CIV\Mohawk\lav3_opti.jpg"]
		];
	};
	
	//Boote:
	
	//Motorboot
	case "C_Boat_Civil_01_police_F":
	{
	_ret =
		[
			["textures\COP\Vehicles\Boote\polizei_motorboot.jpg","cop"]
		];
	};
	
	//Speedboot
	case "B_Boat_Armed_01_minigun_F":
	{
	_ret =
		[
			["textures\COP\Vehicles\Boote\polizei_speedboot.jpg","cop"]
		];
	};
};
diag_log "VEHICLE COLOR CFG";
diag_log _ret;
_ret;