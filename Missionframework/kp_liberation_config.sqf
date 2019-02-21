/*
CONFIG FILE FOR KP LIBERATION
*/

// Vehicle classnames which also function as ACE medical vehicles.
KP_liberation_medical_vehicles = [
	"B_Truck_01_medical_F",
	"B_T_Truck_01_medical_F",
	"rhsusf_M1085A1P2_B_D_Medical_fmtv_usarmy",
	"rhsusf_M1085A1P2_B_WD_Medical_fmtv_usarmy",
	"rhsusf_m113_usarmy_medical",
	"rhsusf_m113d_usarmy_medical",
	"rhsusf_M1230a1_usarmy_d",
	"rhsusf_M1230a1_usarmy_wd",
	"RHS_UH60M_MEV",
	"RHS_UH60M_MEV2",
	"RHS_UH60M_MEV_d",
	"RHS_UH60M_MEV2_d",
	"UK3CB_BAF_LandRover_Amb_FFR_Green_A_MTP",
	"UK3CB_BAF_LandRover_Amb_FFR_Sand_A_DDPM"
];

// Classnames of ACE3 crates (which have to be in the unit preset as well).
KP_liberation_ace_crates = [
	"ACE_Box_82mm_Mo_HE",
	"ACE_Box_82mm_Mo_Smoke",
	"ACE_Box_82mm_Mo_Illum",
	"ACE_medicalSupplyCrate_advanced"
];

/* - Custom unit and arsenal preset settings.
If you want to change a preset, it's recommended to set all four presets to 0 and edit the appropriate custom.sqf files in the preset folders.*/

/* BLUFOR preset:
0 = Custom (default vanilla with many optional mods supported)
1 = Apex Tanoa (apex vanilla with many optional mods supported)
2 = 3cb BAF (MTP)
3 = 3cb BAF (Desert)
4 = BWMod Bundeswehr (Flecktarn)
5 = BWMod Bundeswehr (Tropentarn)
6 = RHS USAF (Woodland)
7 = RHS USAF (Desert)
8 = RHS AFRF (VDV/MSV) */
KP_liberation_preset_blufor = 7;

/* OPFOR preset:
0 = Custom (default vanilla CSAT)
1 = Apex Tanoa (apex vanilla CSAT)
2 = RHS AFRF (EMR/MSV)
3 = Project OPFOR (Takistan)
4 = Project OPFOR (Islamic State)
5 = Project OPFOR (Sahrani) */
KP_liberation_preset_opfor = 2;

/* Resistance preset:
0 = Custom (default vanilla FIA)
1 = Apex Tanoa (apex vanilla Syndikat)
2 = RHS GREF
3 = Project OPFOR (Middle Eastern)
4 = Project OPFOR (Sahrani) */
KP_liberation_preset_resistance = 2;

/* Civilians preset:
0 = Custom (default vanilla)
1 = Apex Tanoa (apex vanilla)
2 = Project OPFOR (Middle Eastern)
3 = RDS Civilians */
KP_liberation_preset_civilians = 0;

/* Which arsenal preset should be used?
0 = Use the default blacklist method (defined below).
1 = Custom arsenal preset (edit the custom.sqf in the arsenal_presets\ folder to change things for your own versions and tweaks).
2 = Killah Potatoes Gaming Community arsenal preset.
3 = RHS USAF arsenal preset.
4 = RHS USAF arsenal preset with ACE.
5 = RHS USAF arsenal preset with ACE and ACRE.
6 = 3cbBAF and RHS USAF arsenal preset. */
KP_liberation_arsenal = 0;

/* - Fuel consumption settings.
Time in minutes till a full tank depletes whilst the vehicle is standing still with a running engine.	*/
KP_liberation_fuel_neutral = 180;
// Time in minutes till a full tank depletes whilst the vehicle is driving below max speed.
KP_liberation_fuel_normal = 90;
// Time in minutes till a full tank depletes whilst the vehicle is driving at max speed.
KP_liberation_fuel_max = 45;

/* - Gameplay constant settings.
Name of the savegame namespace inside of the [ServerProfileName].vars.Arma3Profile file.	*/
GRLIB_save_key = "KP_LIBERATION_" + (toUpper worldName) + "_SAVEGAME";

GRLIB_side_friendly = WEST;																						// Friendly side.
GRLIB_side_enemy = EAST;																						// Enemy side.
GRLIB_side_resistance = RESISTANCE;																				// Resistance side.
GRLIB_side_civilian = CIVILIAN;																					// Civilian side.
GRLIB_respawn_marker = "respawn";																				// Respawn marker name.

GRLIB_color_friendly = "ColorBLUFOR";																			// Friendly sector marker color.
GRLIB_color_enemy = "ColorOPFOR";																				// Enemy sector marker color.
GRLIB_color_enemy_bright = "ColorRED";																			// Enemy sector marker color (activated).

GRLIB_fob_range = 125;																							// Build range around the main FOB building.
GRLIB_halo_altitude = 2500;																						// Altitude in metres for the HALO jump.
GRLIB_secondary_missions_costs = [15, 10, 8];																	// Intel price for the secondary missions [FOB hunting, Convoy ambush, SAR].
GRLIB_secondary_objective_impact = 0.6;																			// The percentage impact against enemy combat readiness for a successful FOB hunt.
GRLIB_recycling_percentage = 0.5;																				// Percentage of resources you get back from recycling.
KP_liberation_production_interval = 30				/ GRLIB_resources_multiplier;								// Time in minutes until a production process is finished, when resources multiplier is set to 1.

GRLIB_sector_size = 1000;																						// Range to activate a sector.
GRLIB_capture_size = 175;																						// Range to capture a sector.
GRLIB_defended_buildingpos_part = 0.4;																			// Multiplier for defenders in buildings.
GRLIB_battlegroup_size = 6							* (sqrt GRLIB_unitcap) * (sqrt GRLIB_csat_aggressivity);	// Size of enemy battlegroups.
GRLIB_vulnerability_timer = 1200;																				// Time in seconds how long a captured sector is vulnerable to enemy troops.
GRLIB_radiotower_size = 2500;																					// Radio Tower scanning range.
GRLIB_surrender_chance = 80;																					// Chance that enemy infantry will surrender after heavy losses are encountered.

GRLIB_civilians_amount = 10 						* GRLIB_civilian_activity;									// Civilian count multiplier.
GRLIB_cleanup_delay = 1200;																						// Time in seconds until bodies of dead soldiers are cleaned up.

GRLIB_blufor_cap = 100								* GRLIB_unitcap;											// Cap for BLUFOR.
GRLIB_sector_cap = 180								* GRLIB_unitcap;											// Cap for sector defenders.
GRLIB_battlegroup_cap = 150							* GRLIB_unitcap;											// Cap for enemy battlegroups.
GRLIB_patrol_cap = 150								* GRLIB_unitcap;											// Cap for enemy patrols.

KP_liberation_cr_kill_penalty = 5;																				// Civil Reputation penalty for killing a civilian.
KP_liberation_cr_building_penalty = 3;																			// Civil Reputation penalty for destroying/damaging a building.
KP_liberation_cr_vehicle_penalty = 2;																			// Civil Reputation penalty for stealing a civilian vehicle.
KP_liberation_cr_resistance_penalty = 3;																		// Civil Reputation penalty for killing a friendly resistance soldier.
KP_liberation_cr_sector_gain = 5;																				// Civil Reputation gain for liberate a sector.
KP_liberation_cr_wounded_chance = 35;																			// Chance (0-100) that there are wounded civilians right after capturing a sector.
KP_liberation_cr_wounded_gain = 2;																				// Civil Reputation gain for providing medical assistance for wounded civilians.

KP_liberation_civinfo_min = 5400;																				// Civil Informant minimum spawn time. (seconds)
KP_liberation_civinfo_max = 10800;																				// Civil Informant maximum spawn time. (seconds)
KP_liberation_civinfo_chance = 75;																				// Civil Informant spawn chance. (0-100)
KP_liberation_civinfo_intel = 5;																				// Civil Informant intel amount.
KP_liberation_civinfo_duration = 1200;																			// Civil Informant staytime until despawning. (seconds)
KP_liberation_civinfo_task_chance = 40;																			// Chance (0-100) that the delivered informant will spawn a time critical task.
KP_liberation_civinfo_task_duration = 900;																		// Duration until the task will despawn if no player is near. (seconds)

KP_liberation_convoy_ambush_chance = 2;																			// Chance that a logistic convoy will be ambushed, when civil reputation is low.
KP_liberation_convoy_ambush_duration = 1200;																	// Duration of the convoy ambush event. (seconds)

KP_liberation_resistance_tier2 = 30;																			// At which strength (0-100) the guerilla forces will be at tier 2?
KP_liberation_resistance_tier3 = 70;																			// At which strength (0-100) the guerilla forces will be at tier 3?
KP_liberation_resistance_at_chance = 20;																		// Chance that a guerilla unit has a RPG. (tier 2 and 3)
KP_liberation_resistance_sector_chance = 35;																	// Chance that a guerilla squad will join an ongoing sector attack.
KP_liberation_resistance_ambush_chance = 25;																	// Chance that some guerilla units will spawn in blufor sectors for an ambush, if reputation is low.

/* - Default arsenal blacklist method.
Useless if you're using anything other than "kp_liberation_arsenal = 0;" above. A whitelisted arsenal is always more performance friendly then a blacklisted arsenal.
REMEMBER: All static turret and UAV bags should be defined here, to stop players from exploiting free resources via the virtual arsenal.	*/
blacklisted_from_arsenal = [
"arifle_AK12_F"
"arifle_AK12_GL_F"
"arifle_AKM_F"
"arifle_AKM_FL_F"
"arifle_AKS_F"
"arifle_ARX_blk_F"
"arifle_ARX_ghex_ACO_Pointer_Snds_F"
"arifle_ARX_ghex_ARCO_Pointer_Snds_F"
"arifle_ARX_ghex_DMS_Pointer_Snds_Bipod_F"
"arifle_ARX_ghex_F"
"arifle_ARX_hex_ACO_Pointer_Snds_F"
"arifle_ARX_hex_ARCO_Pointer_Snds_F"
"arifle_ARX_hex_DMS_Pointer_Snds_Bipod_F"
"arifle_ARX_hex_F"
"arifle_ARX_Viper_F"
"arifle_ARX_Viper_hex_F"
"arifle_CTAR_blk_ACO_F"
"arifle_CTAR_blk_aco_flash_F"
"arifle_CTAR_blk_ACO_Pointer_F"
"arifle_CTAR_blk_ACO_Pointer_Snds_F"
"arifle_CTAR_blk_ARCO_F"
"arifle_CTAR_blk_arco_flash_F"
"arifle_CTAR_blk_ARCO_Pointer_F"
"arifle_CTAR_blk_ARCO_Pointer_Snds_F"
"arifle_CTAR_blk_F"
"arifle_CTAR_blk_flash_F"
"arifle_CTAR_blk_Pointer_F"
"arifle_CTAR_ghex_F"
"arifle_CTAR_GL_blk_ACO_F"
"arifle_CTAR_GL_blk_aco_flash_F"
"arifle_CTAR_GL_blk_ACO_Pointer_Snds_F"
"arifle_CTAR_GL_blk_arco_flash_F"
"arifle_CTAR_GL_blk_ARCO_Pointer_F"
"arifle_CTAR_GL_blk_F"
"arifle_CTAR_GL_ghex_F"
"arifle_CTAR_GL_hex_F"
"arifle_CTAR_hex_F"
"arifle_CTARS_blk_F"
"arifle_CTARS_blk_flash_F"
"arifle_CTARS_blk_Pointer_F"
"arifle_CTARS_ghex_F"
"arifle_CTARS_hex_F"
"arifle_Katiba_ACO_F"
"arifle_Katiba_ACO_pointer_F"
"arifle_Katiba_ACO_pointer_snds_F"
"arifle_Katiba_ARCO_F"
"arifle_Katiba_ARCO_pointer_F"
"arifle_Katiba_ARCO_pointer_snds_F"
"arifle_Katiba_C_ACO_F"
"arifle_Katiba_C_ACO_pointer_F"
"arifle_Katiba_C_ACO_pointer_snds_F"
"arifle_Katiba_C_F"
"arifle_Katiba_F"
"arifle_Katiba_GL_ACO_F"
"arifle_Katiba_GL_ACO_pointer_F"
"arifle_Katiba_GL_ACO_pointer_snds_F"
"arifle_Katiba_GL_ARCO_pointer_F"
"arifle_Katiba_GL_F"
"arifle_Katiba_GL_Nstalker_pointer_F"
"arifle_Katiba_pointer_F"
"arifle_Mk20_ACO_F"
"arifle_Mk20_ACO_pointer_F"
"arifle_Mk20_F"
"arifle_Mk20_GL_ACO_F"
"arifle_Mk20_GL_F"
"arifle_Mk20_GL_MRCO_pointer_F"
"arifle_Mk20_GL_plain_F"
"arifle_Mk20_Holo_F"
"arifle_Mk20_MRCO_F"
"arifle_Mk20_MRCO_plain_F"
"arifle_Mk20_MRCO_pointer_F"
"arifle_Mk20_plain_F"
"arifle_Mk20_pointer_F"
"arifle_Mk20C_ACO_F"
"arifle_Mk20C_ACO_pointer_F"
"arifle_Mk20C_F"
"arifle_Mk20C_plain_F"
"arifle_MX_ACO_F"
"arifle_MX_ACO_pointer_F"
"arifle_MX_ACO_pointer_snds_F"
"arifle_MX_Black_F"
"arifle_MX_Black_Hamr_pointer_F"
"arifle_MX_F"
"arifle_MX_GL_ACO_F"
"arifle_MX_GL_ACO_pointer_F"
"arifle_MX_GL_Black_F"
"arifle_MX_GL_Black_Hamr_pointer_F"
"arifle_MX_GL_F"
"arifle_MX_GL_Hamr_pointer_F"
"arifle_MX_GL_Holo_pointer_snds_F"
"arifle_MX_GL_khk_ACO_F"
"arifle_MX_GL_khk_F"
"arifle_MX_GL_khk_Hamr_Pointer_F"
"arifle_MX_GL_khk_Holo_Pointer_Snds_F"
"arifle_MX_Hamr_pointer_F"
"arifle_MX_Holo_pointer_F"
"arifle_MX_khk_ACO_Pointer_F"
"arifle_MX_khk_ACO_Pointer_Snds_F"
"arifle_MX_khk_F"
"arifle_MX_khk_Hamr_Pointer_F"
"arifle_MX_khk_Hamr_Pointer_Snds_F"
"arifle_MX_khk_Holo_Pointer_F"
"arifle_MX_khk_Pointer_F"
"arifle_MX_pointer_F"
"arifle_MX_RCO_pointer_snds_F"
"arifle_MX_SW_Black_F"
"arifle_MX_SW_Black_Hamr_pointer_F"
"arifle_MX_SW_F"
"arifle_MX_SW_Hamr_pointer_F"
"arifle_MX_SW_khk_F"
"arifle_MX_SW_khk_Pointer_F"
"arifle_MX_SW_pointer_F"
"arifle_MXC_ACO_F"
"arifle_MXC_ACO_pointer_F"
"arifle_MXC_ACO_pointer_snds_F"
"arifle_MXC_Black_F"
"arifle_MXC_F"
"arifle_MXC_Holo_F"
"arifle_MXC_Holo_pointer_F"
"arifle_MXC_Holo_pointer_snds_F"
"arifle_MXC_khk_ACO_F"
"arifle_MXC_khk_ACO_Pointer_Snds_F"
"arifle_MXC_khk_F"
"arifle_MXC_khk_Holo_Pointer_F"
"arifle_MXC_SOS_point_snds_F"
"arifle_MXM_Black_F"
"arifle_MXM_DMS_F"
"arifle_MXM_DMS_LP_BI_snds_F"
"arifle_MXM_F"
"arifle_MXM_Hamr_LP_BI_F"
"arifle_MXM_Hamr_pointer_F"
"arifle_MXM_khk_F"
"arifle_MXM_khk_MOS_Pointer_Bipod_F"
"arifle_MXM_khk_MOS_Pointer_Bipod_Snds_F"
"arifle_MXM_RCO_pointer_snds_F"
"arifle_MXM_SOS_pointer_F"
"arifle_SDAR_F"
"arifle_SPAR_01_blk_ACO_Pointer_F"
"arifle_SPAR_01_blk_ERCO_Pointer_F"
"arifle_SPAR_01_blk_F"
"arifle_SPAR_01_GL_blk_ACO_Pointer_F"
"arifle_SPAR_01_GL_blk_ERCO_Pointer_F"
"arifle_SPAR_01_GL_blk_F"
"arifle_SPAR_01_GL_khk_F"
"arifle_SPAR_01_GL_snd_F"
"arifle_SPAR_01_khk_F"
"arifle_SPAR_01_snd_F"
"arifle_SPAR_02_blk_ERCO_Pointer_F"
"arifle_SPAR_02_blk_F"
"arifle_SPAR_02_blk_Pointer_F"
"arifle_SPAR_02_khk_F"
"arifle_SPAR_02_snd_F"
"arifle_SPAR_03_blk_F"
"arifle_SPAR_03_blk_MOS_Pointer_Bipod_F"
"arifle_SPAR_03_khk_F"
"arifle_SPAR_03_snd_F"
"arifle_TRG20_ACO_F"
"arifle_TRG20_ACO_Flash_F"
"arifle_TRG20_ACO_pointer_F"
"arifle_TRG20_F"
"arifle_TRG20_Holo_F"
"arifle_TRG21_ACO_pointer_F"
"arifle_TRG21_ARCO_pointer_F"
"arifle_TRG21_F"
"arifle_TRG21_GL_ACO_pointer_F"
"arifle_TRG21_GL_F"
"arifle_TRG21_GL_MRCO_F"
"arifle_TRG21_MRCO_F"
"B_Patrol_Soldier_Autorifleman_weapon_F"
"B_Patrol_Soldier_Carrier_weapon_F"
"B_Patrol_Soldier_HeavyGunner_weapon_F"
"B_Patrol_Soldier_Leader_weapon_F"
"B_Patrol_Soldier_MachineGunner_weapon_F"
"B_Patrol_Soldier_Marksman_weapon_F"
"B_Patrol_Soldier_Medic_weapon_F"
"B_Patrol_Soldier_Operator_weapon_F"
"B_Patrol_Soldier_Pistol_F"
"B_Patrol_Soldier_Specialist_weapon_F"
"hgun_ACPC2_F"
"hgun_ACPC2_snds_F"
"hgun_P07_F"
"hgun_P07_khk_F"
"hgun_P07_khk_Snds_F"
"hgun_P07_snds_F"
"hgun_PDW2000_F"
"hgun_PDW2000_Holo_F"
"hgun_PDW2000_Holo_snds_F"
"hgun_PDW2000_snds_F"
"hgun_Pistol_01_F"
"hgun_Pistol_heavy_01_F"
"hgun_Pistol_heavy_01_MRD_F"
"hgun_Pistol_heavy_01_snds_F"
"hgun_Pistol_heavy_02_F"
"hgun_Pistol_heavy_02_Yorris_F"
"hgun_Pistol_Signal_F"
"hgun_Rook40_F"
"hgun_Rook40_snds_F"
"launch_B_Titan_F"
"launch_B_Titan_short_F"
"launch_B_Titan_short_tna_F"
"launch_B_Titan_tna_F"
"launch_I_Titan_F"
"launch_I_Titan_short_F"
"launch_MRAWS_green_F"
"launch_MRAWS_green_rail_F"
"launch_MRAWS_olive_F"
"launch_MRAWS_olive_rail_F"
"launch_MRAWS_sand_F"
"launch_MRAWS_sand_rail_F"
"launch_NLAW_F"
"launch_O_Titan_F"
"launch_O_Titan_ghex_F"
"launch_O_Titan_short_F"
"launch_O_Titan_short_ghex_F"
"launch_O_Vorona_brown_F"
"launch_O_Vorona_green_F"
"launch_RPG32_F"
"launch_RPG32_ghex_F"
"launch_RPG7_F"
"launch_Titan_F"
"launch_Titan_short_F"
"LMG_03_F"
"LMG_03_Vehicle_F"
"LMG_Mk200_BI_F"
"LMG_Mk200_F"
"LMG_Mk200_LP_BI_F"
"LMG_Mk200_MRCO_F"
"LMG_Mk200_pointer_F"
"LMG_Zafir_ARCO_F"
"LMG_Zafir_F"
"LMG_Zafir_pointer_F"
"MMG_01_hex_ARCO_LP_F"
"MMG_01_hex_F"
"MMG_01_tan_F"
"MMG_02_black_F"
"MMG_02_black_RCO_BI_F"
"MMG_02_camo_F"
"MMG_02_sand_F"
"MMG_02_sand_RCO_LP_F"
"SMG_01_ACO_F"
"SMG_01_F"
"SMG_01_Holo_F"
"SMG_01_Holo_pointer_snds_F"
"SMG_02_ACO_F"
"SMG_02_ARCO_pointg_F"
"SMG_02_F"
"SMG_02_flash_F"
"SMG_03_black"
"SMG_03_camo"
"SMG_03_hex"
"SMG_03_khaki"
"SMG_03_TR_black"
"SMG_03_TR_camo"
"SMG_03_TR_hex"
"SMG_03_TR_khaki"
"SMG_03C_black"
"SMG_03C_camo"
"SMG_03C_hex"
"SMG_03C_khaki"
"SMG_03C_TR_black"
"SMG_03C_TR_camo"
"SMG_03C_TR_hex"
"SMG_03C_TR_khaki"
"SMG_05_F"
"srifle_DMR_01_ACO_F"
"srifle_DMR_01_ARCO_F"
"srifle_DMR_01_DMS_BI_F"
"srifle_DMR_01_DMS_F"
"srifle_DMR_01_DMS_snds_BI_F"
"srifle_DMR_01_DMS_snds_F"
"srifle_DMR_01_F"
"srifle_DMR_01_MRCO_F"
"srifle_DMR_01_SOS_F"
"srifle_DMR_02_ACO_F"
"srifle_DMR_02_ARCO_F"
"srifle_DMR_02_camo_AMS_LP_F"
"srifle_DMR_02_camo_F"
"srifle_DMR_02_DMS_F"
"srifle_DMR_02_F"
"srifle_DMR_02_MRCO_F"
"srifle_DMR_02_sniper_AMS_LP_S_F"
"srifle_DMR_02_sniper_F"
"srifle_DMR_02_SOS_F"
"srifle_DMR_03_ACO_F"
"srifle_DMR_03_AMS_F"
"srifle_DMR_03_ARCO_F"
"srifle_DMR_03_DMS_F"
"srifle_DMR_03_DMS_snds_F"
"srifle_DMR_03_F"
"srifle_DMR_03_khaki_F"
"srifle_DMR_03_MRCO_F"
"srifle_DMR_03_multicam_F"
"srifle_DMR_03_SOS_F"
"srifle_DMR_03_tan_AMS_LP_F"
"srifle_DMR_03_tan_F"
"srifle_DMR_03_woodland_F"
"srifle_DMR_04_ACO_F"
"srifle_DMR_04_ARCO_F"
"srifle_DMR_04_DMS_F"
"srifle_DMR_04_F"
"srifle_DMR_04_MRCO_F"
"srifle_DMR_04_NS_LP_F"
"srifle_DMR_04_SOS_F"
"srifle_DMR_04_Tan_F"
"srifle_DMR_05_ACO_F"
"srifle_DMR_05_ARCO_F"
"srifle_DMR_05_blk_F"
"srifle_DMR_05_DMS_F"
"srifle_DMR_05_DMS_snds_F"
"srifle_DMR_05_hex_F"
"srifle_DMR_05_KHS_LP_F"
"srifle_DMR_05_MRCO_F"
"srifle_DMR_05_SOS_F"
"srifle_DMR_05_tan_f"
"srifle_DMR_06_camo_F"
"srifle_DMR_06_camo_khs_F"
"srifle_DMR_06_olive_F"
"srifle_DMR_07_blk_DMS_F"
"srifle_DMR_07_blk_DMS_Snds_F"
"srifle_DMR_07_blk_F"
"srifle_DMR_07_blk_F_arco_flash_F"
"srifle_DMR_07_ghex_F"
"srifle_DMR_07_hex_F"
"srifle_EBR_ACO_F"
"srifle_EBR_ARCO_pointer_F"
"srifle_EBR_ARCO_pointer_snds_F"
"srifle_EBR_DMS_F"
"srifle_EBR_DMS_pointer_snds_F"
"srifle_EBR_F"
"srifle_EBR_Hamr_pointer_F"
"srifle_EBR_MRCO_LP_BI_F"
"srifle_EBR_MRCO_pointer_F"
"srifle_EBR_SOS_F"
"srifle_GM6_camo_F"
"srifle_GM6_camo_LRPS_F"
"srifle_GM6_camo_SOS_F"
"srifle_GM6_F"
"srifle_GM6_ghex_F"
"srifle_GM6_ghex_LRPS_F"
"srifle_GM6_LRPS_F"
"srifle_GM6_SOS_F"
"srifle_LRR_camo_F"
"srifle_LRR_camo_LRPS_F"
"srifle_LRR_camo_SOS_F"
"srifle_LRR_F"
"srifle_LRR_LRPS_F"
"srifle_LRR_SOS_F"
"srifle_LRR_tna_F"
"srifle_LRR_tna_LRPS_F"
"ItemWatch"
"ItemCompass"
"ItemGPS"
"ItemRadio"
"ItemMap"
"MineDetector"
"Binocular"
"Rangefinder"
"NVGoggles"
"NVGoggles_OPFOR"
"NVGoggles_INDEP"
"Integrated_NVG_F"
"Integrated_NVG_TI_0_F"
"Integrated_NVG_TI_1_F"
"Laserdesignator"
"Laserdesignator_02"
"Laserdesignator_03"
"FirstAidKit"
"Medikit"
"ToolKit"
"Zasleh2"
"muzzle_snds_H"
"muzzle_snds_L"
"muzzle_snds_M"
"muzzle_snds_B"
"muzzle_snds_H_MG"
"muzzle_snds_H_SW"
"optic_Arco"
"optic_Hamr"
"optic_Aco"
"optic_ACO_grn"
"optic_Aco_smg"
"optic_ACO_grn_smg"
"optic_Holosight"
"optic_Holosight_smg"
"optic_SOS"
"acc_flashlight"
"acc_flashlight_smg_01"
"acc_flashlight_pistol"
"acc_pointer_IR"
"optic_MRCO"
"muzzle_snds_acp"
"optic_NVS"
"optic_Nightstalker"
"optic_tws"
"optic_tws_mg"
"optic_DMS"
"optic_Yorris"
"optic_MRD"
"optic_LRPS"
"B_UavTerminal"
"O_UavTerminal"
"I_UavTerminal"
"muzzle_snds_338_black"
"muzzle_snds_338_green"
"muzzle_snds_338_sand"
"muzzle_snds_93mmg"
"muzzle_snds_93mmg_tan"
"optic_AMS"
"optic_AMS_khk"
"optic_AMS_snd"
"optic_KHS_blk"
"optic_KHS_hex"
"optic_KHS_old"
"optic_KHS_tan"
"bipod_01_F_snd"
"bipod_01_F_blk"
"bipod_01_F_mtp"
"bipod_02_F_blk"
"bipod_02_F_tan"
"bipod_02_F_hex"
"bipod_03_F_blk"
"bipod_03_F_oli"
"muzzle_snds_570"
"O_NVGoggles_hex_F"
"O_NVGoggles_urb_F"
"O_NVGoggles_ghex_F"
"NVGoggles_tna_F"
"NVGogglesB_blk_F"
"NVGogglesB_grn_F"
"NVGogglesB_gry_F"
"Laserdesignator_01_khk_F"
"Laserdesignator_02_ghex_F"
"muzzle_snds_H_khk_F"
"muzzle_snds_H_snd_F"
"muzzle_snds_m_khk_F"
"muzzle_snds_m_snd_F"
"muzzle_snds_58_blk_F"
"muzzle_snds_58_wdm_F"
"muzzle_snds_58_ghex_F"
"muzzle_snds_58_hex_F"
"muzzle_snds_B_khk_F"
"muzzle_snds_B_snd_F"
"muzzle_snds_65_TI_blk_F"
"muzzle_snds_65_TI_hex_F"
"muzzle_snds_65_TI_ghex_F"
"muzzle_snds_H_MG_blk_F"
"muzzle_snds_H_MG_khk_F"
"optic_Arco_blk_F"
"optic_Arco_ghex_F"
"optic_DMS_ghex_F"
"optic_Hamr_khk_F"
"optic_ERCO_blk_F"
"optic_ERCO_khk_F"
"optic_ERCO_snd_F"
"optic_SOS_khk_F"
"optic_LRPS_tna_F"
"optic_LRPS_ghex_F"
"optic_Holosight_blk_F"
"optic_Holosight_khk_F"
"optic_Holosight_smg_blk_F"
"optic_Holosight_smg_khk_F"
"bipod_01_F_khk"
"C_UavTerminal"
"B_AA_01_weapon_F"
"B_Assault_Diver"
"B_AssaultPack_blk"
"B_AssaultPack_blk_DiverExp"
"B_AssaultPack_cbr"
"B_AssaultPack_dgtl"
"B_AssaultPack_Kerry"
"B_AssaultPack_khk"
"B_AssaultPack_mcamo"
"B_AssaultPack_mcamo_AA"
"B_AssaultPack_mcamo_AAR"
"B_AssaultPack_mcamo_Ammo"
"B_AssaultPack_mcamo_AT"
"B_AssaultPack_ocamo"
"B_AssaultPack_ocamo_Medic_F"
"B_AssaultPack_rgr"
"B_AssaultPack_rgr_BTLAT_F"
"B_AssaultPack_rgr_BTLAT2_F"
"B_AssaultPack_rgr_BTReconMedic"
"B_AssaultPack_rgr_CTRGLAT_F"
"B_AssaultPack_rgr_CTRGLAT2_F"
"B_AssaultPack_rgr_CTRGMedic_F"
"B_AssaultPack_rgr_LAT"
"B_AssaultPack_rgr_LAT2"
"B_AssaultPack_rgr_Medic"
"B_AssaultPack_rgr_ReconExp"
"B_AssaultPack_rgr_ReconLAT"
"B_AssaultPack_rgr_ReconMedic"
"B_AssaultPack_rgr_Repair"
"B_AssaultPack_sgg"
"B_AssaultPack_tna_BTMedic_F"
"B_AssaultPack_tna_BTRepair_F"
"B_AssaultPack_tna_F"
"B_AssaultPackG"
"B_AT_01_weapon_F"
"B_B_Parachute_02_F"
"B_Bergen_blk"
"B_Bergen_dgtl_F"
"B_Bergen_hex_F"
"B_Bergen_mcamo"
"B_Bergen_mcamo_F"
"B_Bergen_rgr"
"B_Bergen_sgg"
"B_Bergen_tna_F"
"B_BergenC_blu"
"B_BergenC_grn"
"B_BergenC_red"
"B_BergenG"
"B_BergenG_TEST_B_Soldier_overloaded"
"B_Carryall_cbr"
"B_Carryall_cbr_AAT"
"B_Carryall_cbr_AHAT"
"B_Carryall_ghex_F"
"B_Carryall_ghex_Mine"
"B_Carryall_ghex_OTAAA_F"
"B_Carryall_ghex_OTAAR_AAR_F"
"B_Carryall_ghex_OTAAT_F"
"B_Carryall_ghex_OTAHAT_F"
"B_Carryall_ghex_OTAmmo_F"
"B_Carryall_ghex_OTEng_F"
"B_Carryall_ghex_OTExp_F"
"B_Carryall_ghex_OTReconExp_F"
"B_Carryall_khk"
"B_Carryall_khk_Mine"
"B_Carryall_mcamo"
"B_Carryall_mcamo_AAA"
"B_Carryall_mcamo_AAT"
"B_Carryall_ocamo"
"B_Carryall_ocamo_AAA"
"B_Carryall_ocamo_AAR"
"B_Carryall_ocamo_Eng"
"B_Carryall_ocamo_Exp"
"B_Carryall_ocamo_Mine"
"B_Carryall_oli"
"B_Carryall_oli_BTAAA_F"
"B_Carryall_oli_BTAAT_F"
"B_Carryall_oli_BTAmmo_F"
"B_Carryall_oli_Mine"
"B_Carryall_oucamo"
"B_Carryall_oucamo_AAA"
"B_Carryall_oucamo_AAR"
"B_Carryall_oucamo_AAT"
"B_Carryall_oucamo_Eng"
"B_Carryall_oucamo_Exp"
"B_Carryall_oucamo_Repair"
"B_FieldPack_blk"
"B_FieldPack_blk_Bandit_8_F"
"B_FieldPack_blk_DiverExp"
"B_FieldPack_cb_Bandit_3_F"
"B_FieldPack_cbr"
"B_FieldPack_cbr_AA"
"B_FieldPack_cbr_AAA"
"B_FieldPack_cbr_AAT"
"B_FieldPack_cbr_Ammo"
"B_FieldPack_cbr_Ammo_F"
"B_FieldPack_cbr_AT"
"B_FieldPack_cbr_HAT"
"B_FieldPack_cbr_LAT"
"B_FieldPack_cbr_Medic"
"B_FieldPack_cbr_Repair"
"B_FieldPack_cbr_RPG_AT"
"B_FieldPack_ghex_F"
"B_FieldPack_ghex_OTAA_F"
"B_FieldPack_ghex_OTAT_F"
"B_FieldPack_ghex_OTHAT_F"
"B_FieldPack_ghex_OTLAT_F"
"B_FieldPack_ghex_OTMedic_F"
"B_FieldPack_ghex_OTReconMedic_F"
"B_FieldPack_ghex_OTRepair_F"
"B_FieldPack_ghex_OTRPG_AT_F"
"B_FieldPack_khk"
"B_FieldPack_khk_Bandit_1_F"
"B_FieldPack_ocamo"
"B_FieldPack_ocamo_AA"
"B_FieldPack_ocamo_AAR"
"B_FieldPack_ocamo_LAT_F"
"B_FieldPack_ocamo_Medic"
"B_FieldPack_ocamo_ReconExp"
"B_FieldPack_ocamo_ReconMedic"
"B_FieldPack_oli"
"B_FieldPack_oucamo"
"B_FieldPack_oucamo_AA"
"B_FieldPack_oucamo_AAR"
"B_FieldPack_oucamo_Ammo"
"B_FieldPack_oucamo_AT"
"B_FieldPack_oucamo_LAT"
"B_FieldPack_oucamo_Medic"
"B_FieldPack_oucamo_Repair"
"B_GMG_01_A_weapon_F"
"B_GMG_01_high_weapon_F"
"B_GMG_01_weapon_F"
"B_GMG_01_Weapon_grn_F"
"B_HMG_01_A_weapon_F"
"B_HMG_01_high_weapon_F"
"B_HMG_01_support_F"
"B_HMG_01_support_grn_F"
"B_HMG_01_support_high_F"
"B_HMG_01_weapon_F"
"B_HMG_01_Weapon_grn_F"
"B_HuntingBackpack"
"B_I_Parachute_02_F"
"B_Kitbag_cbr"
"B_Kitbag_cbr_Bandit_2_F"
"B_Kitbag_cbr_Para_5_F"
"B_Kitbag_mcamo"
"B_Kitbag_mcamo_Eng"
"B_Kitbag_rgr"
"B_Kitbag_rgr_AAR"
"B_Kitbag_rgr_BTAA_F"
"B_Kitbag_rgr_BTAT_F"
"B_Kitbag_rgr_BTEng_F"
"B_Kitbag_rgr_BTExp_F"
"B_Kitbag_rgr_BTReconExp_F"
"B_Kitbag_rgr_CTRGExp_F"
"B_Kitbag_rgr_Exp"
"B_Kitbag_rgr_Mine"
"B_Kitbag_rgr_Para_3_F"
"B_Kitbag_rgr_Para_8_F"
"B_Kitbag_sgg"
"B_Kitbag_tan"
"B_LegStrapBag_black_F"
"B_LegStrapBag_black_repair_F"
"B_LegStrapBag_coyote_F"
"B_LegStrapBag_coyote_repair_F"
"B_LegStrapBag_olive_F"
"B_LegStrapBag_olive_repair_F"
"B_Messenger_Black_F"
"B_Messenger_Coyote_F"
"B_Messenger_Gray_F"
"B_Messenger_Gray_Medical_F"
"B_Messenger_IDAP_F"
"B_Messenger_IDAP_Medical_F"
"B_Messenger_IDAP_TrainingMines_F"
"B_Messenger_Olive_F"
"B_Mortar_01_support_F"
"B_Mortar_01_support_grn_F"
"B_Mortar_01_weapon_F"
"B_Mortar_01_Weapon_grn_F"
"B_O_Parachute_02_F"
"B_OutdoorPack_blk"
"B_OutdoorPack_blu"
"B_OutdoorPack_tan"
"B_Parachute"
"B_Patrol_Launcher_bag_F"
"B_Patrol_Leader_bag_F"
"B_Patrol_Medic_bag_F"
"B_Patrol_Respawn_bag_F"
"B_Patrol_Supply_bag_F"
"B_Respawn_Sleeping_bag_blue_F"
"B_Respawn_Sleeping_bag_brown_F"
"B_Respawn_Sleeping_bag_F"
"B_Respawn_TentA_F"
"B_Respawn_TentDome_F"
"B_Static_Designator_01_weapon_F"
"B_TacticalPack_blk"
"B_TacticalPack_mcamo"
"B_TacticalPack_ocamo"
"B_TacticalPack_ocamo_AA_F"
"B_TacticalPack_ocamo_AT_F"
"B_TacticalPack_oli"
"B_TacticalPack_oli_AAR"
"B_TacticalPack_rgr"
"B_UAV_01_backpack_F"
"B_UAV_06_backpack_F"
"B_UAV_06_medical_backpack_F"
"B_ViperHarness_blk_F"
"B_ViperHarness_ghex_Exp_F"
"B_ViperHarness_ghex_F"
"B_ViperHarness_ghex_JTAC_F"
"B_ViperHarness_ghex_LAT_F"
"B_ViperHarness_ghex_M_F"
"B_ViperHarness_ghex_Medic_F"
"B_ViperHarness_ghex_TL_F"
"B_ViperHarness_hex_Exp_F"
"B_ViperHarness_hex_F"
"B_ViperHarness_hex_JTAC_F"
"B_ViperHarness_hex_LAT_F"
"B_ViperHarness_hex_M_F"
"B_ViperHarness_hex_Medic_F"
"B_ViperHarness_hex_TL_F"
"B_ViperHarness_khk_F"
"B_ViperHarness_oli_F"
"B_ViperLightHarness_blk_F"
"B_ViperLightHarness_ghex_F"
"B_ViperLightHarness_hex_F"
"B_ViperLightHarness_khk_F"
"B_ViperLightHarness_oli_F"
"C_Bergen_blu"
"C_Bergen_grn"
"C_Bergen_red"
"C_IDAP_UAV_01_backpack_F"
"C_IDAP_UAV_06_antimine_backpack_F"
"C_IDAP_UAV_06_backpack_F"
"C_IDAP_UAV_06_medical_backpack_F"
"C_UAV_06_backpack_F"
"C_UAV_06_medical_backpack_F"
"G_AssaultPack"
"G_Bergen"
"G_Carryall_Ammo"
"G_Carryall_Exp"
"G_FieldPack_LAT"
"G_FieldPack_LAT2"
"G_FieldPack_Medic"
"G_TacticalPack_Eng"
"H_Bandanna_blu"
"H_Bandanna_camo"
"H_Bandanna_cbr"
"H_Bandanna_gry"
"H_Bandanna_khk"
"H_Bandanna_khk_hs"
"H_Bandanna_mcamo"
"H_Bandanna_sand"
"H_Bandanna_sgg"
"H_Bandanna_surfer"
"H_Bandanna_surfer_blk"
"H_Bandanna_surfer_grn"
"H_BandMask_blk"
"H_BandMask_demon"
"H_BandMask_khk"
"H_BandMask_reaper"
"H_Beret_02"
"H_Beret_blk"
"H_Beret_blk_POLICE"
"H_Beret_brn_SF"
"H_Beret_Colonel"
"H_Beret_gen_F"
"H_Beret_grn"
"H_Beret_grn_SF"
"H_Beret_ocamo"
"H_Beret_red"
"H_Booniehat_dgtl"
"H_Booniehat_dirty"
"H_Booniehat_grn"
"H_Booniehat_indp"
"H_Booniehat_khk"
"H_Booniehat_khk_hs"
"H_Booniehat_mcamo"
"H_Booniehat_oli"
"H_Booniehat_tan"
"H_Booniehat_tna_F"
"H_Cap_Black_IDAP_F"
"H_Cap_blk"
"H_Cap_blk_CMMG"
"H_Cap_blk_ION"
"H_Cap_blk_Raven"
"H_Cap_blk_Syndikat_F"
"H_Cap_blu"
"H_Cap_brn_SPECOPS"
"H_Cap_grn"
"H_Cap_grn_BI"
"H_Cap_grn_Syndikat_F"
"H_Cap_headphones"
"H_Cap_khaki_specops_UK"
"H_Cap_marshal"
"H_Cap_oli"
"H_Cap_oli_hs"
"H_Cap_oli_Syndikat_F"
"H_Cap_Orange_IDAP_F"
"H_Cap_police"
"H_Cap_press"
"H_Cap_red"
"H_Cap_surfer"
"H_Cap_tan"
"H_Cap_tan_specops_US"
"H_Cap_tan_Syndikat_F"
"H_Cap_usblack"
"H_Cap_White_IDAP_F"
"H_Construction_basic_black_F"
"H_Construction_basic_orange_F"
"H_Construction_basic_red_F"
"H_Construction_basic_vrana_F"
"H_Construction_basic_white_F"
"H_Construction_basic_yellow_F"
"H_Construction_earprot_black_F"
"H_Construction_earprot_orange_F"
"H_Construction_earprot_red_F"
"H_Construction_earprot_vrana_F"
"H_Construction_earprot_white_F"
"H_Construction_earprot_yellow_F"
"H_Construction_headset_black_F"
"H_Construction_headset_orange_F"
"H_Construction_headset_red_F"
"H_Construction_headset_vrana_F"
"H_Construction_headset_white_F"
"H_Construction_headset_yellow_F"
"H_CrewHelmetHeli_B"
"H_CrewHelmetHeli_I"
"H_CrewHelmetHeli_O"
"H_EarProtectors_black_F"
"H_EarProtectors_orange_F"
"H_EarProtectors_red_F"
"H_EarProtectors_white_F"
"H_EarProtectors_yellow_F"
"H_Hat_blue"
"H_Hat_brown"
"H_Hat_camo"
"H_Hat_checker"
"H_Hat_grey"
"H_Hat_Safari_olive_F"
"H_Hat_Safari_sand_F"
"H_Hat_tan"
"H_HeadBandage_bloody_F"
"H_HeadBandage_clean_F"
"H_HeadBandage_stained_F"
"H_HeadSet_black_F"
"H_HeadSet_orange_F"
"H_HeadSet_red_F"
"H_HeadSet_white_F"
"H_HeadSet_yellow_F"
"H_Helmet_Kerry"
"H_Helmet_Skate"
"H_HelmetB"
"H_HelmetB_black"
"H_HelmetB_camo"
"H_HelmetB_desert"
"H_HelmetB_Enh_tna_F"
"H_HelmetB_grass"
"H_HelmetB_light"
"H_HelmetB_light_black"
"H_HelmetB_light_desert"
"H_HelmetB_light_grass"
"H_HelmetB_light_sand"
"H_HelmetB_light_snakeskin"
"H_HelmetB_Light_tna_F"
"H_HelmetB_paint"
"H_HelmetB_plain_blk"
"H_HelmetB_plain_mcamo"
"H_HelmetB_sand"
"H_HelmetB_snakeskin"
"H_HelmetB_TI_tna_F"
"H_HelmetB_tna_F"
"H_HelmetCrew_B"
"H_HelmetCrew_I"
"H_HelmetCrew_O"
"H_HelmetCrew_O_ghex_F"
"H_HelmetIA"
"H_HelmetIA_camo"
"H_HelmetIA_net"
"H_HelmetLeaderO_ghex_F"
"H_HelmetLeaderO_ocamo"
"H_HelmetLeaderO_oucamo"
"H_HelmetO_ghex_F"
"H_HelmetO_ocamo"
"H_HelmetO_oucamo"
"H_HelmetO_ViperSP_ghex_F"
"H_HelmetO_ViperSP_hex_F"
"H_HelmetSpecB"
"H_HelmetSpecB_blk"
"H_HelmetSpecB_paint1"
"H_HelmetSpecB_paint2"
"H_HelmetSpecB_sand"
"H_HelmetSpecB_snakeskin"
"H_HelmetSpecO_blk"
"H_HelmetSpecO_ghex_F"
"H_HelmetSpecO_ocamo"
"H_MilCap_blue"
"H_MilCap_dgtl"
"H_MilCap_gen_F"
"H_MilCap_ghex_F"
"H_MilCap_gry"
"H_MilCap_mcamo"
"H_MilCap_ocamo"
"H_MilCap_oucamo"
"H_MilCap_rucamo"
"H_MilCap_tna_F"
"H_PASGT_basic_black_F"
"H_PASGT_basic_blue_F"
"H_PASGT_basic_blue_press_F"
"H_PASGT_basic_olive_F"
"H_PASGT_basic_white_F"
"H_PASGT_neckprot_blue_press_F"
"H_PilotHelmetFighter_B"
"H_PilotHelmetFighter_I"
"H_PilotHelmetFighter_O"
"H_PilotHelmetHeli_B"
"H_PilotHelmetHeli_I"
"H_PilotHelmetHeli_O"
"H_RacingHelmet_1_black_F"
"H_RacingHelmet_1_blue_F"
"H_RacingHelmet_1_F"
"H_RacingHelmet_1_green_F"
"H_RacingHelmet_1_orange_F"
"H_RacingHelmet_1_red_F"
"H_RacingHelmet_1_white_F"
"H_RacingHelmet_1_yellow_F"
"H_RacingHelmet_2_F"
"H_RacingHelmet_3_F"
"H_RacingHelmet_4_F"
"H_Shemag_khk"
"H_Shemag_olive"
"H_Shemag_olive_hs"
"H_Shemag_tan"
"H_ShemagOpen_khk"
"H_ShemagOpen_tan"
"H_StrawHat"
"H_StrawHat_dark"
"H_Tank_black_F"
"H_TurbanO_blk"
"H_Watchcap_blk"
"H_Watchcap_camo"
"H_Watchcap_cbr"
"H_Watchcap_khk"
"H_Watchcap_sgg"
"H_WirelessEarpiece_F"
"Headgear_H_Bandanna_blu"
"Headgear_H_Bandanna_camo"
"Headgear_H_Bandanna_cbr"
"Headgear_H_Bandanna_gry"
"Headgear_H_Bandanna_khk"
"Headgear_H_Bandanna_khk_hs"
"Headgear_H_Bandanna_mcamo"
"Headgear_H_Bandanna_sand"
"Headgear_H_Bandanna_sgg"
"Headgear_H_Bandanna_surfer"
"Headgear_H_Bandanna_surfer_blk"
"Headgear_H_Bandanna_surfer_grn"
"Headgear_H_Beret_02"
"Headgear_H_Beret_blk"
"Headgear_H_Beret_Colonel"
"Headgear_H_Beret_gen_F"
"Headgear_H_Booniehat_dgtl"
"Headgear_H_Booniehat_khk"
"Headgear_H_Booniehat_khk_hs"
"Headgear_H_Booniehat_mcamo"
"Headgear_H_Booniehat_oli"
"Headgear_H_Booniehat_tan"
"Headgear_H_Booniehat_tna_F"
"Headgear_H_Cap_Black_IDAP_F"
"Headgear_H_Cap_blk"
"Headgear_H_Cap_blk_CMMG"
"Headgear_H_Cap_blk_ION"
"Headgear_H_Cap_blk_Raven"
"Headgear_H_Cap_blu"
"Headgear_H_Cap_brn_SPECOPS"
"Headgear_H_Cap_grn"
"Headgear_H_Cap_grn_BI"
"Headgear_H_Cap_headphones"
"Headgear_H_Cap_khaki_specops_UK"
"Headgear_H_Cap_marshal"
"Headgear_H_Cap_oli"
"Headgear_H_Cap_oli_hs"
"Headgear_H_Cap_Orange_IDAP_F"
"Headgear_H_Cap_police"
"Headgear_H_Cap_press"
"Headgear_H_Cap_red"
"Headgear_H_Cap_surfer"
"Headgear_H_Cap_tan"
"Headgear_H_Cap_tan_specops_US"
"Headgear_H_Cap_usblack"
"Headgear_H_Cap_White_IDAP_F"
"Headgear_H_Construction_basic_black_F"
"Headgear_H_Construction_basic_orange_F"
"Headgear_H_Construction_basic_red_F"
"Headgear_H_Construction_basic_vrana_F"
"Headgear_H_Construction_basic_white_F"
"Headgear_H_Construction_basic_yellow_F"
"Headgear_H_Construction_earprot_black_F"
"Headgear_H_Construction_earprot_orange_F"
"Headgear_H_Construction_earprot_red_F"
"Headgear_H_Construction_earprot_vrana_F"
"Headgear_H_Construction_earprot_white_F"
"Headgear_H_Construction_earprot_yellow_F"
"Headgear_H_Construction_headset_black_F"
"Headgear_H_Construction_headset_orange_F"
"Headgear_H_Construction_headset_red_F"
"Headgear_H_Construction_headset_vrana_F"
"Headgear_H_Construction_headset_white_F"
"Headgear_H_Construction_headset_yellow_F"
"Headgear_H_CrewHelmetHeli_B"
"Headgear_H_CrewHelmetHeli_I"
"Headgear_H_CrewHelmetHeli_O"
"Headgear_H_EarProtectors_black_F"
"Headgear_H_EarProtectors_orange_F"
"Headgear_H_EarProtectors_red_F"
"Headgear_H_EarProtectors_white_F"
"Headgear_H_EarProtectors_yellow_F"
"Headgear_H_Hat_blue"
"Headgear_H_Hat_brown"
"Headgear_H_Hat_camo"
"Headgear_H_Hat_checker"
"Headgear_H_Hat_grey"
"Headgear_H_Hat_Safari_olive_F"
"Headgear_H_Hat_Safari_sand_F"
"Headgear_H_Hat_tan"
"Headgear_H_HeadBandage_bloody_F"
"Headgear_H_HeadBandage_clean_F"
"Headgear_H_HeadBandage_stained_F"
"Headgear_H_HeadSet_black_F"
"Headgear_H_HeadSet_orange_F"
"Headgear_H_HeadSet_red_F"
"Headgear_H_HeadSet_white_F"
"Headgear_H_HeadSet_yellow_F"
"Headgear_H_Helmet_Skate"
"Headgear_H_HelmetB"
"Headgear_H_HelmetB_black"
"Headgear_H_HelmetB_camo"
"Headgear_H_HelmetB_desert"
"Headgear_H_HelmetB_Enh_tna_F"
"Headgear_H_HelmetB_grass"
"Headgear_H_HelmetB_light"
"Headgear_H_HelmetB_light_black"
"Headgear_H_HelmetB_light_desert"
"Headgear_H_HelmetB_light_grass"
"Headgear_H_HelmetB_light_sand"
"Headgear_H_HelmetB_light_snakeskin"
"Headgear_H_HelmetB_Light_tna_F"
"Headgear_H_HelmetB_sand"
"Headgear_H_HelmetB_snakeskin"
"Headgear_H_HelmetB_TI_tna_F"
"Headgear_H_HelmetB_tna_F"
"Headgear_H_HelmetCrew_B"
"Headgear_H_HelmetCrew_I"
"Headgear_H_HelmetCrew_O"
"Headgear_H_HelmetCrew_O_ghex_F"
"Headgear_H_HelmetIA"
"Headgear_H_HelmetLeaderO_ghex_F"
"Headgear_H_HelmetLeaderO_ocamo"
"Headgear_H_HelmetLeaderO_oucamo"
"Headgear_H_HelmetO_ghex_F"
"Headgear_H_HelmetO_ocamo"
"Headgear_H_HelmetO_oucamo"
"Headgear_H_HelmetO_ViperSP_ghex_F"
"Headgear_H_HelmetO_ViperSP_hex_F"
"Headgear_H_HelmetSpecB"
"Headgear_H_HelmetSpecB_blk"
"Headgear_H_HelmetSpecB_paint1"
"Headgear_H_HelmetSpecB_paint2"
"Headgear_H_HelmetSpecB_sand"
"Headgear_H_HelmetSpecB_snakeskin"
"Headgear_H_HelmetSpecO_blk"
"Headgear_H_HelmetSpecO_ghex_F"
"Headgear_H_HelmetSpecO_ocamo"
"Headgear_H_MilCap_blue"
"Headgear_H_MilCap_dgtl"
"Headgear_H_MilCap_gen_F"
"Headgear_H_MilCap_ghex_F"
"Headgear_H_MilCap_gry"
"Headgear_H_MilCap_mcamo"
"Headgear_H_MilCap_ocamo"
"Headgear_H_MilCap_tna_F"
"Headgear_H_PASGT_basic_black_F"
"Headgear_H_PASGT_basic_blue_F"
"Headgear_H_PASGT_basic_blue_press_F"
"Headgear_H_PASGT_basic_olive_F"
"Headgear_H_PASGT_basic_white_F"
"Headgear_H_PASGT_neckprot_blue_press_F"
"Headgear_H_PilotHelmetFighter_B"
"Headgear_H_PilotHelmetFighter_I"
"Headgear_H_PilotHelmetFighter_O"
"Headgear_H_PilotHelmetHeli_B"
"Headgear_H_PilotHelmetHeli_I"
"Headgear_H_PilotHelmetHeli_O"
"Headgear_H_RacingHelmet_1_black_F"
"Headgear_H_RacingHelmet_1_blue_F"
"Headgear_H_RacingHelmet_1_F"
"Headgear_H_RacingHelmet_1_green_F"
"Headgear_H_RacingHelmet_1_orange_F"
"Headgear_H_RacingHelmet_1_red_F"
"Headgear_H_RacingHelmet_1_white_F"
"Headgear_H_RacingHelmet_1_yellow_F"
"Headgear_H_RacingHelmet_2_F"
"Headgear_H_RacingHelmet_3_F"
"Headgear_H_RacingHelmet_4_F"
"Headgear_H_Shemag_olive"
"Headgear_H_Shemag_olive_hs"
"Headgear_H_ShemagOpen_khk"
"Headgear_H_ShemagOpen_tan"
"Headgear_H_StrawHat"
"Headgear_H_StrawHat_dark"
"Headgear_H_Tank_black_F"
"Headgear_H_Watchcap_blk"
"Headgear_H_Watchcap_camo"
"Headgear_H_Watchcap_cbr"
"Headgear_H_Watchcap_khk"
"Headgear_H_WirelessEarpiece_F"
"I_AA_01_weapon_F"
"I_Assault_Diver"
"I_AT_01_weapon_F"
"I_Carryall_oli_AAA"
"I_Carryall_oli_AAT"
"I_Carryall_oli_Eng"
"I_Carryall_oli_Exp"
"I_Fieldpack_oli_AA"
"I_Fieldpack_oli_AAR"
"I_Fieldpack_oli_Ammo"
"I_Fieldpack_oli_AT"
"I_Fieldpack_oli_LAT"
"I_Fieldpack_oli_LAT2"
"I_Fieldpack_oli_Medic"
"I_Fieldpack_oli_Repair"
"I_GMG_01_A_weapon_F"
"I_GMG_01_high_weapon_F"
"I_GMG_01_weapon_F"
"I_HMG_01_A_weapon_F"
"I_HMG_01_high_weapon_F"
"I_HMG_01_support_F"
"I_HMG_01_support_high_F"
"I_HMG_01_weapon_F"
"I_Mortar_01_support_F"
"I_Mortar_01_weapon_F"
"I_UAV_01_backpack_F"
"I_UAV_06_backpack_F"
"I_UAV_06_medical_backpack_F"
"Item_B_UavTerminal"
"Item_Binocular"
"Item_C_UavTerminal"
"Item_I_UavTerminal"
"Item_Laserdesignator"
"Item_Laserdesignator_01_khk_F"
"Item_Laserdesignator_02"
"Item_Laserdesignator_02_ghex_F"
"Item_Laserdesignator_03"
"Item_NVGoggles"
"Item_NVGoggles_INDEP"
"Item_NVGoggles_OPFOR"
"Item_NVGoggles_tna_F"
"Item_NVGogglesB_blk_F"
"Item_NVGogglesB_grn_F"
"Item_NVGogglesB_gry_F"
"Item_O_NVGoggles_ghex_F"
"Item_O_NVGoggles_hex_F"
"Item_O_NVGoggles_urb_F"
"Item_O_UavTerminal"
"Item_Rangefinder"
"Item_U_AntigonaBody"
"Item_U_AttisBody"
"Item_U_B_CombatUniform_mcam"
"Item_U_B_CombatUniform_mcam_tshirt"
"Item_U_B_CombatUniform_mcam_vest"
"Item_U_B_CombatUniform_mcam_worn"
"Item_U_B_CombatUniform_sgg"
"Item_U_B_CombatUniform_sgg_tshirt"
"Item_U_B_CombatUniform_sgg_vest"
"Item_U_B_CombatUniform_wdl"
"Item_U_B_CombatUniform_wdl_tshirt"
"Item_U_B_CombatUniform_wdl_vest"
"Item_U_B_CTRG_1"
"Item_U_B_CTRG_2"
"Item_U_B_CTRG_3"
"Item_U_B_CTRG_Soldier_2_F"
"Item_U_B_CTRG_Soldier_3_F"
"Item_U_B_CTRG_Soldier_F"
"Item_U_B_CTRG_Soldier_urb_1_F"
"Item_U_B_CTRG_Soldier_urb_2_F"
"Item_U_B_CTRG_Soldier_urb_3_F"
"Item_U_B_FullGhillie_ard"
"Item_U_B_FullGhillie_lsh"
"Item_U_B_FullGhillie_sard"
"Item_U_B_GEN_Commander_F"
"Item_U_B_GEN_Soldier_F"
"Item_U_B_GhillieSuit"
"Item_U_B_HeliPilotCoveralls"
"Item_U_B_PilotCoveralls"
"Item_U_B_Protagonist_VR"
"Item_U_B_SpecopsUniform_sgg"
"Item_U_B_survival_uniform"
"Item_U_B_T_FullGhillie_tna_F"
"Item_U_B_T_Sniper_F"
"Item_U_B_T_Soldier_AR_F"
"Item_U_B_T_Soldier_F"
"Item_U_B_T_Soldier_SL_F"
"Item_U_B_Wetsuit"
"Item_U_BG_Guerilla1_1"
"Item_U_BG_Guerilla1_2_F"
"Item_U_BG_Guerilla2_1"
"Item_U_BG_Guerilla2_2"
"Item_U_BG_Guerilla2_3"
"Item_U_BG_Guerilla3_1"
"Item_U_BG_Guerilla3_2"
"Item_U_BG_Guerrilla_6_1"
"Item_U_BG_leader"
"Item_U_C_Commoner_shorts"
"Item_U_C_Commoner1_1"
"Item_U_C_Commoner1_2"
"Item_U_C_Commoner1_3"
"Item_U_C_Commoner2_1"
"Item_U_C_Commoner2_2"
"Item_U_C_Commoner2_3"
"Item_U_C_ConstructionCoverall_Black_F"
"Item_U_C_ConstructionCoverall_Blue_F"
"Item_U_C_ConstructionCoverall_Red_F"
"Item_U_C_ConstructionCoverall_Vrana_F"
"Item_U_C_Driver_1"
"Item_U_C_Driver_1_black"
"Item_U_C_Driver_1_blue"
"Item_U_C_Driver_1_green"
"Item_U_C_Driver_1_orange"
"Item_U_C_Driver_1_red"
"Item_U_C_Driver_1_white"
"Item_U_C_Driver_1_yellow"
"Item_U_C_Driver_2"
"Item_U_C_Driver_3"
"Item_U_C_Driver_4"
"Item_U_C_Farmer"
"Item_U_C_Fisherman"
"Item_U_C_FishermanOveralls"
"Item_U_C_HunterBody_brn"
"Item_U_C_HunterBody_grn"
"Item_U_C_IDAP_Man_cargo_F"
"Item_U_C_IDAP_Man_Casual_F"
"Item_U_C_IDAP_Man_jeans_F"
"Item_U_C_IDAP_Man_shorts_F"
"Item_U_C_IDAP_Man_tee_F"
"Item_U_C_IDAP_Man_teeshorts_F"
"Item_U_C_Journalist"
"Item_U_C_Man_casual_1_F"
"Item_U_C_Man_casual_2_F"
"Item_U_C_Man_casual_3_F"
"Item_U_C_Man_casual_4_F"
"Item_U_C_Man_casual_5_F"
"Item_U_C_Man_casual_6_F"
"Item_U_C_man_sport_1_F"
"Item_U_C_man_sport_2_F"
"Item_U_C_man_sport_3_F"
"Item_U_C_Mechanic_01_F"
"Item_U_C_Paramedic_01_F"
"Item_U_C_Poloshirt_blue"
"Item_U_C_Poloshirt_burgundy"
"Item_U_C_Poloshirt_redwhite"
"Item_U_C_Poloshirt_salmon"
"Item_U_C_Poloshirt_stripped"
"Item_U_C_Poloshirt_tricolour"
"Item_U_C_Poor_1"
"Item_U_C_Poor_2"
"Item_U_C_Poor_shorts_1"
"Item_U_C_Poor_shorts_2"
"Item_U_C_PriestBody"
"Item_U_C_Scavenger_1"
"Item_U_C_Scavenger_2"
"Item_U_C_Scientist"
"Item_U_C_ShirtSurfer_shorts"
"Item_U_C_TeeSurfer_shorts_1"
"Item_U_C_TeeSurfer_shorts_2"
"Item_U_C_WorkerCoveralls"
"Item_U_C_WorkerOveralls"
"Item_U_Competitor"
"Item_U_I_C_Soldier_Bandit_1_F"
"Item_U_I_C_Soldier_Bandit_2_F"
"Item_U_I_C_Soldier_Bandit_3_F"
"Item_U_I_C_Soldier_Bandit_4_F"
"Item_U_I_C_Soldier_Bandit_5_F"
"Item_U_I_C_Soldier_Camo_F"
"Item_U_I_C_Soldier_Para_1_F"
"Item_U_I_C_Soldier_Para_2_F"
"Item_U_I_C_Soldier_Para_3_F"
"Item_U_I_C_Soldier_Para_4_F"
"Item_U_I_C_Soldier_Para_5_F"
"Item_U_I_CombatUniform"
"Item_U_I_CombatUniform_shortsleeve"
"Item_U_I_CombatUniform_tshirt"
"Item_U_I_FullGhillie_ard"
"Item_U_I_FullGhillie_lsh"
"Item_U_I_FullGhillie_sard"
"Item_U_I_G_resistanceLeader_F"
"Item_U_I_G_Story_Protagonist_F"
"Item_U_I_GhillieSuit"
"Item_U_I_HeliPilotCoveralls"
"Item_U_I_OfficerUniform"
"Item_U_I_pilotCoveralls"
"Item_U_I_Protagonist_VR"
"Item_U_I_Wetsuit"
"Item_U_IG_Guerilla1_1"
"Item_U_IG_Guerilla2_1"
"Item_U_IG_Guerilla2_2"
"Item_U_IG_Guerilla2_3"
"Item_U_IG_Guerilla3_1"
"Item_U_IG_Guerilla3_2"
"Item_U_IG_Guerrilla_6_1"
"Item_U_IG_leader"
"Item_U_KerryBody"
"Item_U_Marshal"
"Item_U_MillerBody"
"Item_U_NikosBody"
"Item_U_O_CombatUniform_ocamo"
"Item_U_O_CombatUniform_oucamo"
"Item_U_O_FullGhillie_ard"
"Item_U_O_FullGhillie_lsh"
"Item_U_O_FullGhillie_sard"
"Item_U_O_GhillieSuit"
"Item_U_O_officer_noInsignia_hex_F"
"Item_U_O_OfficerUniform_ocamo"
"Item_U_O_PilotCoveralls"
"Item_U_O_Protagonist_VR"
"Item_U_O_SpecopsUniform_blk"
"Item_U_O_SpecopsUniform_ocamo"
"Item_U_O_T_FullGhillie_tna_F"
"Item_U_O_T_Officer_F"
"Item_U_O_T_Sniper_F"
"Item_U_O_T_Soldier_F"
"Item_U_O_V_Soldier_Viper_F"
"Item_U_O_V_Soldier_Viper_hex_F"
"Item_U_O_Wetsuit"
"Item_U_OG_Guerilla1_1"
"Item_U_OG_Guerilla2_1"
"Item_U_OG_Guerilla2_2"
"Item_U_OG_Guerilla2_3"
"Item_U_OG_Guerilla3_1"
"Item_U_OG_Guerilla3_2"
"Item_U_OG_Guerrilla_6_1"
"Item_U_OG_leader"
"Item_U_OI_Scientist"
"Item_U_OrestesBody"
"Item_U_Rangemaster"
"Item_U_Tank_green_F"
"O_AA_01_weapon_F"
"O_Assault_Diver"
"O_AT_01_weapon_F"
"O_GMG_01_A_weapon_F"
"O_GMG_01_high_weapon_F"
"O_GMG_01_weapon_F"
"O_HMG_01_A_weapon_F"
"O_HMG_01_high_weapon_F"
"O_HMG_01_support_F"
"O_HMG_01_support_high_F"
"O_HMG_01_weapon_F"
"O_Mortar_01_support_F"
"O_Mortar_01_weapon_F"
"O_Static_Designator_02_weapon_F"
"O_UAV_01_backpack_F"
"O_UAV_06_backpack_F"
"O_UAV_06_medical_backpack_F"
"U_AntigonaBody"
"U_AttisBody"
"U_B_CombatUniform_mcam"
"U_B_CombatUniform_mcam_tshirt"
"U_B_CombatUniform_mcam_vest"
"U_B_CombatUniform_mcam_worn"
"U_B_CombatUniform_sgg"
"U_B_CombatUniform_sgg_tshirt"
"U_B_CombatUniform_sgg_vest"
"U_B_CombatUniform_wdl"
"U_B_CombatUniform_wdl_tshirt"
"U_B_CombatUniform_wdl_vest"
"U_B_CTRG_1"
"U_B_CTRG_2"
"U_B_CTRG_3"
"U_B_CTRG_Soldier_2_F"
"U_B_CTRG_Soldier_3_F"
"U_B_CTRG_Soldier_F"
"U_B_CTRG_Soldier_urb_1_F"
"U_B_CTRG_Soldier_urb_2_F"
"U_B_CTRG_Soldier_urb_3_F"
"U_B_FullGhillie_ard"
"U_B_FullGhillie_lsh"
"U_B_FullGhillie_sard"
"U_B_G_Captain_Ivan_F"
"U_B_GEN_Commander_F"
"U_B_GEN_Soldier_F"
"U_B_GhillieSuit"
"U_B_HeliPilotCoveralls"
"U_B_PilotCoveralls"
"U_B_Protagonist_VR"
"U_B_Soldier_VR"
"U_B_SpecopsUniform_sgg"
"U_B_survival_uniform"
"U_B_T_FullGhillie_tna_F"
"U_B_T_Sniper_F"
"U_B_T_Soldier_AR_F"
"U_B_T_Soldier_F"
"U_B_T_Soldier_SL_F"
"U_B_Wetsuit"
"U_BasicBody"
"U_BG_Guerilla1_1"
"U_BG_Guerilla1_2_F"
"U_BG_Guerilla2_1"
"U_BG_Guerilla2_2"
"U_BG_Guerilla2_3"
"U_BG_Guerilla3_1"
"U_BG_Guerilla3_2"
"U_BG_Guerrilla_6_1"
"U_BG_leader"
"U_C_Commoner_shorts"
"U_C_Commoner1_1"
"U_C_Commoner1_2"
"U_C_Commoner1_3"
"U_C_Commoner2_1"
"U_C_Commoner2_2"
"U_C_Commoner2_3"
"U_C_ConstructionCoverall_Black_F"
"U_C_ConstructionCoverall_Blue_F"
"U_C_ConstructionCoverall_Red_F"
"U_C_ConstructionCoverall_Vrana_F"
"U_C_Driver_1"
"U_C_Driver_1_black"
"U_C_Driver_1_blue"
"U_C_Driver_1_green"
"U_C_Driver_1_orange"
"U_C_Driver_1_red"
"U_C_Driver_1_white"
"U_C_Driver_1_yellow"
"U_C_Driver_2"
"U_C_Driver_3"
"U_C_Driver_4"
"U_C_Farmer"
"U_C_Fisherman"
"U_C_FishermanOveralls"
"U_C_HunterBody_brn"
"U_C_HunterBody_grn"
"U_C_IDAP_Man_cargo_F"
"U_C_IDAP_Man_casual_F"
"U_C_IDAP_Man_Jeans_F"
"U_C_IDAP_Man_shorts_F"
"U_C_IDAP_Man_Tee_F"
"U_C_IDAP_Man_TeeShorts_F"
"U_C_Journalist"
"U_C_Man_casual_1_F"
"U_C_Man_casual_2_F"
"U_C_Man_casual_3_F"
"U_C_Man_casual_4_F"
"U_C_Man_casual_5_F"
"U_C_Man_casual_6_F"
"U_C_man_sport_1_F"
"U_C_man_sport_2_F"
"U_C_man_sport_3_F"
"U_C_Mechanic_01_F"
"U_C_Novak"
"U_C_Paramedic_01_F"
"U_C_Poloshirt_blue"
"U_C_Poloshirt_burgundy"
"U_C_Poloshirt_redwhite"
"U_C_Poloshirt_salmon"
"U_C_Poloshirt_stripped"
"U_C_Poloshirt_tricolour"
"U_C_Poor_1"
"U_C_Poor_2"
"U_C_Poor_shorts_1"
"U_C_Poor_shorts_2"
"U_C_PriestBody"
"U_C_Protagonist_VR"
"U_C_Scavenger_1"
"U_C_Scavenger_2"
"U_C_Scientist"
"U_C_ShirtSurfer_shorts"
"U_C_Soldier_VR"
"U_C_TeeSurfer_shorts_1"
"U_C_TeeSurfer_shorts_2"
"U_C_WorkerCoveralls"
"U_C_WorkerOveralls"
"U_Competitor"
"U_I_C_Soldier_Bandit_1_F"
"U_I_C_Soldier_Bandit_2_F"
"U_I_C_Soldier_Bandit_3_F"
"U_I_C_Soldier_Bandit_4_F"
"U_I_C_Soldier_Bandit_5_F"
"U_I_C_Soldier_Camo_F"
"U_I_C_Soldier_Para_1_F"
"U_I_C_Soldier_Para_2_F"
"U_I_C_Soldier_Para_3_F"
"U_I_C_Soldier_Para_4_F"
"U_I_C_Soldier_Para_5_F"
"U_I_CombatUniform"
"U_I_CombatUniform_shortsleeve"
"U_I_CombatUniform_tshirt"
"U_I_FullGhillie_ard"
"U_I_FullGhillie_lsh"
"U_I_FullGhillie_sard"
"U_I_G_resistanceLeader_F"
"U_I_G_Story_Protagonist_F"
"U_I_GhillieSuit"
"U_I_HeliPilotCoveralls"
"U_I_OfficerUniform"
"U_I_pilotCoveralls"
"U_I_Protagonist_VR"
"U_I_Soldier_VR"
"U_I_Wetsuit"
"U_IG_Guerilla1_1"
"U_IG_Guerilla2_1"
"U_IG_Guerilla2_2"
"U_IG_Guerilla2_3"
"U_IG_Guerilla3_1"
"U_IG_Guerilla3_2"
"U_IG_Guerrilla_6_1"
"U_IG_leader"
"U_IG_Menelaos"
"U_KerryBody"
"U_Marshal"
"U_MillerBody"
"U_NikosAgedBody"
"U_NikosBody"
"U_O_CombatUniform_ocamo"
"U_O_CombatUniform_oucamo"
"U_O_FullGhillie_ard"
"U_O_FullGhillie_lsh"
"U_O_FullGhillie_sard"
"U_O_GhillieSuit"
"U_O_officer_noInsignia_hex_F"
"U_O_OfficerUniform_ocamo"
"U_O_PilotCoveralls"
"U_O_Protagonist_VR"
"U_O_Soldier_VR"
"U_O_SpecopsUniform_blk"
"U_O_SpecopsUniform_ocamo"
"U_O_T_FullGhillie_tna_F"
"U_O_T_Officer_F"
"U_O_T_Sniper_F"
"U_O_T_Soldier_F"
"U_O_V_Soldier_Viper_F"
"U_O_V_Soldier_Viper_hex_F"
"U_O_Wetsuit"
"U_OG_Guerilla1_1"
"U_OG_Guerilla2_1"
"U_OG_Guerilla2_2"
"U_OG_Guerilla2_3"
"U_OG_Guerilla3_1"
"U_OG_Guerilla3_2"
"U_OG_Guerrilla_6_1"
"U_OG_leader"
"U_OI_Scientist"
"U_OrestesBody"
"U_Rangemaster"
"U_Tank_green_F"
"U_VirtualMan_F"
"UAV_06_backpack_base_F"
"UAV_06_medical_backpack_base_F"
"V_BandollierB_blk"
"V_BandollierB_cbr"
"V_BandollierB_ghex_F"
"V_BandollierB_khk"
"V_BandollierB_oli"
"V_BandollierB_rgr"
"V_Chestrig_blk"
"V_Chestrig_khk"
"V_Chestrig_oli"
"V_Chestrig_rgr"
"V_DeckCrew_blue_F"
"V_DeckCrew_brown_F"
"V_DeckCrew_green_F"
"V_DeckCrew_red_F"
"V_DeckCrew_violet_F"
"V_DeckCrew_white_F"
"V_DeckCrew_yellow_F"
"V_EOD_blue_F"
"V_EOD_coyote_F"
"V_EOD_IDAP_blue_F"
"V_EOD_olive_F"
"V_HarnessO_brn"
"V_HarnessO_ghex_F"
"V_HarnessO_gry"
"V_HarnessOGL_brn"
"V_HarnessOGL_ghex_F"
"V_HarnessOGL_gry"
"V_HarnessOSpec_brn"
"V_HarnessOSpec_gry"
"V_I_G_resistanceLeader_F"
"V_LegStrapBag_black_F"
"V_LegStrapBag_coyote_F"
"V_LegStrapBag_olive_F"
"V_Plain_crystal_F"
"V_Plain_medical_F"
"V_PlateCarrier_Kerry"
"V_PlateCarrier1_blk"
"V_PlateCarrier1_rgr"
"V_PlateCarrier1_rgr_noflag_F"
"V_PlateCarrier1_tna_F"
"V_PlateCarrier2_blk"
"V_PlateCarrier2_rgr"
"V_PlateCarrier2_rgr_noflag_F"
"V_PlateCarrier2_tna_F"
"V_PlateCarrier3_rgr"
"V_PlateCarrierGL_blk"
"V_PlateCarrierGL_mtp"
"V_PlateCarrierGL_rgr"
"V_PlateCarrierGL_tna_F"
"V_PlateCarrierH_CTRG"
"V_PlateCarrierIA1_dgtl"
"V_PlateCarrierIA2_dgtl"
"V_PlateCarrierIAGL_dgtl"
"V_PlateCarrierIAGL_oli"
"V_PlateCarrierL_CTRG"
"V_PlateCarrierSpec_blk"
"V_PlateCarrierSpec_mtp"
"V_PlateCarrierSpec_rgr"
"V_PlateCarrierSpec_tna_F"
"V_Pocketed_black_F"
"V_Pocketed_coyote_F"
"V_Pocketed_olive_F"
"V_Press_F"
"V_Rangemaster_belt"
"V_RebreatherB"
"V_RebreatherIA"
"V_RebreatherIR"
"V_Safety_blue_F"
"V_Safety_orange_F"
"V_Safety_yellow_F"
"V_TacChestrig_cbr_F"
"V_TacChestrig_grn_F"
"V_TacChestrig_oli_F"
"V_TacVest_blk"
"V_TacVest_blk_POLICE"
"V_TacVest_brn"
"V_TacVest_camo"
"V_TacVest_gen_F"
"V_TacVest_khk"
"V_TacVest_oli"
"V_TacVestCamo_khk"
"V_TacVestIR_blk"
"Vest_V_BandollierB_blk"
"Vest_V_BandollierB_cbr"
"Vest_V_BandollierB_ghex_F"
"Vest_V_BandollierB_khk"
"Vest_V_BandollierB_oli"
"Vest_V_BandollierB_rgr"
"Vest_V_Chestrig_blk"
"Vest_V_Chestrig_khk"
"Vest_V_Chestrig_oli"
"Vest_V_Chestrig_rgr"
"Vest_V_DeckCrew_blue_F"
"Vest_V_DeckCrew_brown_F"
"Vest_V_DeckCrew_green_F"
"Vest_V_DeckCrew_red_F"
"Vest_V_DeckCrew_violet_F"
"Vest_V_DeckCrew_white_F"
"Vest_V_DeckCrew_yellow_F"
"Vest_V_EOD_blue_F"
"Vest_V_EOD_coyote_F"
"Vest_V_EOD_IDAP_blue_F"
"Vest_V_EOD_olive_F"
"Vest_V_HarnessO_brn"
"Vest_V_HarnessO_ghex_F"
"Vest_V_HarnessO_gry"
"Vest_V_HarnessOGL_brn"
"Vest_V_HarnessOGL_ghex_F"
"Vest_V_HarnessOGL_gry"
"Vest_V_I_G_resistanceLeader_F"
"Vest_V_LegStrapBag_black_F"
"Vest_V_LegStrapBag_coyote_F"
"Vest_V_LegStrapBag_olive_F"
"Vest_V_Plain_crystal_F"
"Vest_V_Plain_medical_F"
"Vest_V_PlateCarrier_Kerry"
"Vest_V_PlateCarrier1_blk"
"Vest_V_PlateCarrier1_rgr"
"Vest_V_PlateCarrier1_rgr_noflag_F"
"Vest_V_PlateCarrier1_tna_F"
"Vest_V_PlateCarrier2_blk"
"Vest_V_PlateCarrier2_rgr"
"Vest_V_PlateCarrier2_rgr_noflag_F"
"Vest_V_PlateCarrierGL_blk"
"Vest_V_PlateCarrierGL_mtp"
"Vest_V_PlateCarrierGL_rgr"
"Vest_V_PlateCarrierGL_tna_F"
"Vest_V_PlateCarrierH_CTRG"
"Vest_V_PlateCarrierIA1_dgtl"
"Vest_V_PlateCarrierIA2_dgtl"
"Vest_V_PlateCarrierIAGL_dgtl"
"Vest_V_PlateCarrierIAGL_oli"
"Vest_V_PlateCarrierL_CTRG"
"Vest_V_PlateCarrierSpec_blk"
"Vest_V_PlateCarrierSpec_mtp"
"Vest_V_PlateCarrierSpec_rgr"
"Vest_V_PlateCarrierSpec_tna_F"
"Vest_V_Pocketed_black_F"
"Vest_V_Pocketed_coyote_F"
"Vest_V_Pocketed_olive_F"
"Vest_V_Press_F"
"Vest_V_Rangemaster_belt"
"Vest_V_RebreatherB"
"Vest_V_RebreatherIA"
"Vest_V_RebreatherIR"
"Vest_V_Safety_blue_F"
"Vest_V_Safety_orange_F"
"Vest_V_Safety_yellow_F"
"Vest_V_TacChestrig_cbr_F"
"Vest_V_TacChestrig_grn_F"
"Vest_V_TacChestrig_oli_F"
"Vest_V_TacVest_blk"
"Vest_V_TacVest_blk_POLICE"
"Vest_V_TacVest_brn"
"Vest_V_TacVest_camo"
"Vest_V_TacVest_gen_F"
"Vest_V_TacVest_khk"
"Vest_V_TacVest_oli"
"Vest_V_TacVestIR_blk"


	/*
	"I_HMG_01_weapon_F",
	"B_HMG_01_weapon_F",
	"O_HMG_01_weapon_F",
	"I_HMG_01_A_weapon_F",
	"B_HMG_01_A_weapon_F",
	"O_HMG_01_A_weapon_F",
	"I_HMG_01_high_weapon_F",
	"B_HMG_01_high_weapon_F",
	"O_HMG_01_high_weapon_F",
	"I_GMG_01_weapon_F",
	"B_GMG_01_weapon_F",
	"O_GMG_01_weapon_F",
	"I_GMG_01_A_weapon_F",
	"B_GMG_01_A_weapon_F",
	"O_GMG_01_A_weapon_F",
	"I_GMG_01_high_weapon_F",
	"B_GMG_01_high_weapon_F",
	"O_GMG_01_high_weapon_F",
	"I_Mortar_01_support_F",
	"B_Mortar_01_support_F",
	"O_Mortar_01_support_F",
	"I_Mortar_01_weapon_F",
	"B_Mortar_01_weapon_F",
	"O_Mortar_01_weapon_F",
	"I_HMG_01_support_F",
	"B_HMG_01_support_F",
	"O_HMG_01_support_F",
	"I_HMG_01_support_high_F",
	"B_HMG_01_support_high_F",
	"O_HMG_01_support_high_F",
	"I_AA_01_weapon_F",
	"B_AA_01_weapon_F",
	"O_AA_01_weapon_F",
	"I_AT_01_weapon_F",
	"B_AT_01_weapon_F",
	"O_AT_01_weapon_F",
	"I_UAV_01_backpack_F",
	"B_UAV_01_backpack_F",
	"O_UAV_01_backpack_F",
	"I_UAV_06_backpack_F",
	"B_UAV_06_backpack_F",
	"O_UAV_06_backpack_F",
	"I_UAV_06_medical_backpack_F",
	"B_UAV_06_medical_backpack_F",
	"O_UAV_06_medical_backpack_F",
	"C_UAV_06_backpack_F",
	"C_UAV_06_medical_backpack_F",
	"C_IDAP_UAV_01_backpack_F",
	"C_IDAP_UAV_06_backpack_F",
	"C_IDAP_UAV_06_medical_backpack_F",
	"C_IDAP_UAV_06_antimine_backpack_F",
	"B_Respawn_Sleeping_bag_blue_F",
	"B_Respawn_Sleeping_bag_brown_F",
	"B_Respawn_TentDome_F",
	"B_Respawn_Sleeping_bag_F",
	"B_Respawn_TentA_F",
	*/
	"RHS_M2_Gun_Bag",
	"RHS_M2_Tripod_Bag",
	"rhs_M252_Gun_Bag",
	"rhs_M252_Bipod_Bag",
	"RHS_M2_MiniTripod_Bag",
	"RHS_Mk19_Gun_Bag",
	"RHS_Mk19_Tripod_Bag",
	"rhs_Tow_Gun_Bag",
	"rhs_TOW_Tripod_Bag",
	"RHS_Podnos_Bipod_Bag",
	"RHS_Podnos_Gun_Bag",
	"RHS_Metis_Gun_Bag",
	"RHS_Metis_Tripod_Bag",
	"RHS_Kornet_Gun_Bag",
	"RHS_Kornet_Tripod_Bag",
	"RHS_AGS30_Tripod_Bag",
	"RHS_AGS30_Gun_Bag",
	"RHS_DShkM_Gun_Bag",
	"RHS_DShkM_TripodHigh_Bag",
	"RHS_DShkM_TripodLow_Bag",
	"RHS_Kord_Tripod_Bag",
	"RHS_Kord_Gun_Bag",
	"RHS_NSV_Tripod_Bag",
	"RHS_NSV_Gun_Bag",
	"RHS_SPG9_Gun_Bag",
	"RHS_SPG9_Tripod_Bag",
	"UK3CB_BAF_L16",
	"UK3CB_BAF_L16_Tripod",
	"UK3CB_BAF_M6",
	"UK3CB_BAF_L111A1",
	"UK3CB_BAF_L134A1",
	"UK3CB_BAF_Tripod",
	/*
	"optic_Nightstalker",
	"optic_tws",
	"optic_tws_mg"
	*/
];

// Items which should be added as allowed Items, when they get blacklisted, even if they are not in the blacklisted_from_arsenal array
KP_liberation_allowed_items_extension = [
	"ItemRadioAcreFlagged",
	"rhs_acc_ekp8_18b",
	"rhs_acc_ekp8_18c",
	"rhs_acc_ekp8_18d",
	"rhs_rshg2_mag",
	"rhs_rpg26_mag",
	"rhsusf_acc_g33_T1_flip",
	"rhsusf_acc_g33_xps3_flip",
	"rhsusf_acc_g33_xps3_tan_flip",
	"rhsusf_acc_anpeq15_bk_light_h",
	"rhs_m136_mag",
	"rhs_m136_hedp_mag",
	"rhs_m136_hp_mag",
	"rhs_weap_M136_used",
	"rhs_m72a7_mag",
	"BWA3_optic_ZO4x30_NSV",
	"BWA3_optic_ZO4x30_IRV",
	"BWA3_optic_ZO4x30_Single_NSV",
	"BWA3_optic_ZO4x30_Single_IRV",
	"BWA3_optic_EOTech_Mag_On",
	"BWA3_optic_EOTech_Mag_Off",
	"BWA3_optic_EOTech_tan_Mag_On",
	"BWA3_optic_EOTech_tan_Mag_Off",
	"BWA3_optic_20x50_NSV",
	"BWA3_optic_24x72_NSV",
	"BWA3_acc_VarioRay_flash",
	"BWA3_acc_VarioRay_laser",
	"BWA3_acc_LLM01_flash",
	"BWA3_acc_LLM01_laser",
	"BWA3_acc_LLM01_flash_underbarrel",
	"BWA3_acc_LLM01_laser_underberrel",
	"BWA3_acc_LLM01_laser_underbarrel",
	"BWA3_Pzf3_Used",
	"BWA3_RGW90_Used",
	"UK3CB_BAF_AT4_CS_AP_Mag",
	"UK3CB_BAF_Javelin_Launcher",
	"sma_spitfire_03_rds_low_ard_red",
	"ACE_Chemlight_Shield_Orange",
	"ACE_Chemlight_Shield_White",
	"ACE_Chemlight_Shield_Blue",
	"ACE_Chemlight_Shield_Yellow",
	"ACE_Chemlight_Shield_Green",
	"ACE_Chemlight_Shield_Red",
	"ACE_ReserveParachute",
	"ACE_launch_NLAW_Used_F"
];

/* - Configuration settings for crates transported by vehicles.
Format = ["classname", distance behind vehicle to unload crate, attachTo positions for each box],	*/
box_transport_config = [
	["C_Offroad_01_F", -6.5, [0,-1.7,0.4]],
	["I_G_Offroad_01_F", -6.5, [0,-1.7,0.4]],
	["O_G_Offroad_01_F", -6.5, [0,-1.7,0.4]],
	["C_Van_01_transport_F", -6.5, [0,-1.1,0.25], [0,-2.6,0.25]],
	["I_G_Van_01_transport_F", -6.5, [0,-1.1,0.25], [0,-2.6,0.25]],
	["I_C_Van_01_transport_F", -6.5, [0,-1.1,0.25], [0,-2.6,0.25]],
	["O_G_Van_01_transport_F", -6.5, [0,-1.1,0.25], [0,-2.6,0.25]],
	["C_Truck_02_transport_F", -6.5, [0,0.3,0.05], [0,-1.3,0.05], [0,-2.9,0.05]],
	["C_Truck_02_covered_F", -6.5, [0,0.3,0.05], [0,-1.3,0.05], [0,-2.9,0.05]],
	["RHS_Ural_Open_Civ_03", -6.5, [0,-0.2,0.55], [0,-1.4,0.55], [0,-2.55,0.55]],
	["RHS_Ural_Civ_03", -6.5, [0,-0.2,0.55], [0,-1.4,0.55], [0,-2.55,0.55]],
	["RHS_Ural_Open_MSV_01", -6.5, [0,-0.2,0.55], [0,-1.4,0.55], [0,-2.55,0.55]],
	["RHS_Ural_Open_VDV_01", -6.5, [0,-0.2,0.55], [0,-1.4,0.55], [0,-2.55,0.55]],
	["RHS_Ural_MSV_01", -6.5, [0,-0.2,0.55], [0,-1.4,0.55], [0,-2.55,0.55]],
	["RHS_Ural_VDV_01", -6.5, [0,-0.2,0.55], [0,-1.4,0.55], [0,-2.55,0.55]],
	["RHS_Ural_Open_Flat_MSV_01", -6.5, [0,-0.2,0.55], [0,-1.4,0.55], [0,-2.55,0.55]],
	["RHS_Ural_Open_Flat_VDV_01", -6.5, [0,-0.2,0.55], [0,-1.4,0.55], [0,-2.55,0.55]],
	["LOP_TAK_Civ_Ural_open", -6.5, [0,-0.2,0.55], [0,-1.4,0.55], [0,-2.55,0.55]],
	["LOP_TAK_Civ_Ural", -6.5, [0,-0.2,0.55], [0,-1.4,0.55], [0,-2.55,0.55]],
	["LOP_TKA_Ural_open", -6.5, [0,-0.2,0.55], [0,-1.4,0.55], [0,-2.55,0.55]],
	["LOP_TKA_Ural", -6.5, [0,-0.2,0.55], [0,-1.4,0.55], [0,-2.55,0.55]],
	["LOP_ISTS_OPF_Truck", -6.5, [0,-1.1,0.25], [0,-2.6,0.25]],
	["rhs_kamaz5350_flatbed_vdv", -4.5, [0,0.67,-0.4], [0,-0.88,-0.4], [0,-2.43,-0.4]],
	["rhs_kamaz5350_flatbed_cover_vdv", -4.5, [0,0.67,-0.4], [0,-0.88,-0.4], [0,-2.43,-0.4]],
	["rhs_kamaz5350_open_vdv", -4.5, [0,0.67,-0.4], [0,-0.88,-0.4], [0,-2.43,-0.4]],
	["rhs_kamaz5350_vdv", -4.5, [0,0.67,-0.4], [0,-0.88,-0.4], [0,-2.43,-0.4]],
	["B_Truck_01_transport_F", -6.5, [0,-0.4,0.4], [0,-2.1,0.4], [0,-3.8,0.4]],
	["B_Truck_01_covered_F", -6.5, [0,-0.4,0.4], [0,-2.1,0.4], [0,-3.8,0.4]],
	["B_T_Truck_01_transport_F", -6.5, [0,-0.4,0.4], [0,-2.1,0.4], [0,-3.8,0.4]],
	["B_T_Truck_01_covered_F", -6.5, [0,-0.4,0.4], [0,-2.1,0.4], [0,-3.8,0.4]],
	["rhsusf_M977A4_usarmy_d", -6.5, [0,0.4,1.4], [0,-1.3,1.4], [0,-3,1.4]],
	["rhsusf_M977A4_BKIT_usarmy_d", -6.5, [0,0.4,1.4], [0,-1.3,1.4], [0,-3,1.4]],
	["rhsusf_M977A4_BKIT_M2_usarmy_d", -6.5, [0,0.4,0.7], [0,-1.3,0.7], [0,-3,0.7]],
	["rhsusf_M977A4_usarmy_wd", -6.5, [0,0.4,1.4], [0,-1.3,1.4], [0,-3,1.4]],
	["rhsusf_M977A4_BKIT_usarmy_wd", -6.5, [0,0.4,1.4], [0,-1.3,1.4], [0,-3,1.4]],
	["rhsusf_M977A4_BKIT_M2_usarmy_wd", -6.5, [0,0.4,0.7], [0,-1.3,0.7], [0,-3,0.7]],
	["I_Heli_Transport_02_F", -6.5, [0,4.2,-1.45], [0,2.5,-1.45], [0,0.8,-1.45], [0,-0.9,-1.45]],
	["BW_AW101_Trans_Heer_F", -6.5, [0,4.2,-1.45], [0,2.5,-1.45], [0,0.8,-1.45], [0,-0.9,-1.45]],
	["B_Heli_Transport_03_F", -8, [0,2.2,-1], [0,0.5,-1], [0,-1.2,-1]],
	["B_Heli_Transport_03_unarmed_F", -8, [0,2.2,-1], [0,0.5,-1], [0,-1.2,-1]],
	["B_T_VTOL_01_infantry_F", -7.5,[0,4.7,-4.88],[0,3,-4.88],[0,1.3,-4.88],[0,-0.4,-4.88],[0,-2.1,-4.88]],
	["B_T_VTOL_01_vehicle_F", -7.5,[0,4.7,-4.88],[0,3,-4.88],[0,1.3,-4.88],[0,-0.4,-4.88],[0,-2.1,-4.88]],
	["RHS_CH_47F_10", -8, [0,2.2,-1.7], [0,0.5,-1.7], [0,-1.2,-1.7]],
	["RHS_CH_47F_light", -8, [0,2.2,-1.7], [0,0.5,-1.7], [0,-1.2,-1.7]],
	["RHS_CH_47F", -8, [0,2.2,-1.7], [0,0.5,-1.7], [0,-1.2,-1.7]],
	["UK3CB_BAF_Merlin_HC3_18_DPMT", -7.5, [0.25,3.7,-1.5], [0.25,1.6,-1.5], [0.25,-0.4,-1.5]],
	["UK3CB_BAF_Merlin_HC3_32_MTP", -7.5, [0.25,3.7,-1.5], [0.25,1.6,-1.5], [0.25,-0.4,-1.5]],
	["UK3CB_BAF_Merlin_HC3_CSAR_MTP", -7.5, [0.25,3.7,-1.5], [0.25,1.6,-1.5], [0.25,-0.4,-1.5]],
	["UK3CB_BAF_Merlin_HC4_18_Arctic", -7.5, [0.25,3.7,-1.5], [0.25,1.6,-1.5], [0.25,-0.4,-1.5]],
	["UK3CB_BAF_Merlin_HC4_18_GPMG_Arctic", -7.5, [0.25,3.7,-1.5], [0.25,1.6,-1.5], [0.25,-0.4,-1.5]],
	["UK3CB_BAF_Merlin_HC4_32_Arctic", -7.5, [0.25,3.7,-1.5], [0.25,1.6,-1.5], [0.25,-0.4,-1.5]],
	["UK3CB_BAF_Merlin_HC4_CSAR_Arctic", -7.5, [0.25,3.7,-1.5], [0.25,1.6,-1.5], [0.25,-0.4,-1.5]],
	["O_Truck_03_transport_F", -6.5, [0,-0.8,0.4], [0,-2.4,0.4], [0,-4.0,0.4]],
	["BW_LKW7T_Trans_F", -6.5, [0,-0.8,0.4], [0,-2.4,0.4], [0,-4.0,0.4]],
	["O_Truck_03_covered_F", -6.5, [0,-0.8,0.4], [0,-2.4,0.4], [0,-4.0,0.4]],
	["O_T_Truck_03_transport_ghex_F", -6.5, [0,-0.8,0.4], [0,-2.4,0.4], [0,-4.0,0.4]],
	["O_T_Truck_03_covered_ghex_F", -6.5, [0,-0.8,0.4], [0,-2.4,0.4], [0,-4.0,0.4]],
	["greuh_eh101_gr", -6.5, [0,4.2,-1.45], [0,2.5,-1.45], [0,0.8,-1.45], [0,-0.9,-1.45]],
	["CUP_B_Wolfhound_GMG_GB_W", -6.5, [0,-3.5,2.3]],
	["CUP_B_Wolfhound_HMG_GB_W", -6.5, [0,-3.5,2.3]],
	["CUP_B_Wolfhound_LMG_GB_W", -6.5, [0,-3.5,2.3]],
	["rhsusf_m998_w_2dr_halftop", -4.5, [0,-0.9,-0.2]],
	["rhsusf_m998_d_2dr_halftop", -4.5, [0,-0.9,-0.2]],
	["rhsusf_M1078A1P2_WD_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1078A1P2_B_WD_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1078A1P2_WD_flatbed_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1078A1P2_B_WD_flatbed_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1078A1P2_B_M2_WD_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1078A1P2_B_M2_WD_flatbed_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1078A1P2_D_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1078A1P2_B_D_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1078A1P2_D_flatbed_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1078A1P2_B_D_flatbed_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1078A1P2_B_M2_D_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1078A1P2_B_M2_D_flatbed_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1083A1P2_WD_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1083A1P2_B_WD_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1083A1P2_D_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1083A1P2_B_D_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1083A1P2_WD_flatbed_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1083A1P2_B_WD_flatbed_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1083A1P2_D_flatbed_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1083A1P2_B_D_flatbed_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1083A1P2_B_M2_D_flatbed_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1083A1P2_B_M2_WD_flatbed_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_CH53E_USMC", -11.0, [0,2.5,1.4], [0,2.5,2.6], [0,1.0,1.4], [0,1.0,2.6], [0,-0.5,1.4], [0,-0.5,2.6], [0,-0.5,1.4], [0,-0.5,2.6], [0,-2.0,1.4], [0,-2.5,2.6], [0,-3.5,1.4], [0,-3.5,2.6]],
	["rhsusf_CH53E_USMC_D", -11.0, [0,2.5,1.4], [0,2.5,2.6], [0,1.0,1.4], [0,1.0,2.6], [0,-0.5,1.4], [0,-0.5,2.6], [0,-0.5,1.4], [0,-0.5,2.6], [0,-2.0,1.4], [0,-2.5,2.6], [0,-3.5,1.4], [0,-3.5,2.6]],
	["RHS_C130J", -9.5, [-0.8,4.5,1.9], [0.8,4.5,1.9], [-0.8,4.5,3.1], [0.8,4.5,3.1], [-0.8,3.0,1.9], [0.8,3.0,1.9], [-0.8,3.0,3.1], [0.8,3.0,3.1], [-0.8,2.0,1.9], [0.8,2.0,1.9], [-0.8,2.0,3.1], [0.8,2.0,3.1], [-0.8,1.0,1.9], [0.8,1.0,1.9], [-0.8,1.0,3.1], [0.8,1.0,3.1], [-0.8,0.0,1.9], [0.8,0.0,1.9], [-0.8,0.0,3.1], [0.8,0.0,3.1], [-0.8,-1.0,1.9], [0.8,-1.0,1.9], [-0.8,-1.0,3.1], [0.8,-1.0,3.1]]
];

/* Various other settings.
Everything the AI troups should be able to resupply from.	*/
ai_resupply_sources = [
	"B_Truck_01_ammo_F",
	"B_T_Truck_01_ammo_F",
	"B_Slingload_01_Ammo_F",
	"B_APC_Tracked_01_CRV_F",
	"B_T_APC_Tracked_01_CRV_F",
	"BW_LKW15T_Ammo_F",
	"rhsusf_M1078A1R_SOV_M2_D_fmtv_socom",
	"rhsusf_M977A4_AMMO_usarmy_d",
	"rhsusf_M977A4_AMMO_usarmy_wd",
	"rhsusf_M977A4_AMMO_BKIT_usarmy_d",
	"rhsusf_M977A4_AMMO_BKIT_usarmy_wd",
	"rhsusf_M977A4_AMMO_BKIT_M2_usarmy_d",
	"rhsusf_M977A4_AMMO_BKIT_M2_usarmy_wd",
	"rhs_gaz66_ammo_msv"
];

// Everything that can resupply other vehicles.
vehicle_repair_sources = [
	"C_Offroad_01_repair_F",
	"B_Truck_01_Repair_F",
	"B_T_Truck_01_Repair_F",
	"B_Slingload_01_Repair_F",
	"B_APC_Tracked_01_CRV_F",
	"B_T_APC_Tracked_01_CRV_F",
	"BW_LKW15T_Repair_F",
	"rhsusf_M1078A1R_SOV_M2_D_fmtv_socom",
	"rhsusf_M977A4_REPAIR_usarmy_d",
	"rhsusf_M977A4_REPAIR_usarmy_wd",
	"rhsusf_M977A4_REPAIR_BKIT_usarmy_d",
	"rhsusf_M977A4_REPAIR_BKIT_usarmy_wd",
	"rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_d",
	"rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_wd",
	"RHS_Ural_Repair_VDV_01"
];

vehicle_rearm_sources = [
	"B_Truck_01_ammo_F",
	"B_T_Truck_01_ammo_F",
	"B_Slingload_01_Ammo_F",
	"B_APC_Tracked_01_CRV_F",
	"B_T_APC_Tracked_01_CRV_F",
	"BW_LKW15T_Ammo_F",
	"rhsusf_M1078A1R_SOV_M2_D_fmtv_socom",
	"rhsusf_M977A4_AMMO_usarmy_d",
	"rhsusf_M977A4_AMMO_usarmy_wd",
	"rhsusf_M977A4_AMMO_BKIT_usarmy_d",
	"rhsusf_M977A4_AMMO_BKIT_usarmy_wd",
	"rhsusf_M977A4_AMMO_BKIT_M2_usarmy_d",
	"rhsusf_M977A4_AMMO_BKIT_M2_usarmy_wd",
	"rhs_gaz66_ammo_msv"
];

vehicle_refuel_sources = [
	"C_Van_01_fuel_F",
	"C_Truck_02_fuel_F",
	"B_Truck_01_fuel_F",
	"B_T_Truck_01_fuel_F",
	"B_Slingload_01_Fuel_F",
	"B_APC_Tracked_01_CRV_F",
	"B_T_APC_Tracked_01_CRV_F",
	"BW_LKW15T_Fuel_F",
	"rhsusf_M1078A1R_SOV_M2_D_fmtv_socom",
	"rhsusf_M978A4_usarmy_d",
	"rhsusf_M978A4_usarmy_wd",
	"rhsusf_M978A4_BKIT_usarmy_d",
	"rhsusf_M978A4_BKIT_usarmy_wd",
	"RHS_Ural_Fuel_VDV_01"
];

// Classnames of boats, so they can be built on water.
boats_names = [
	"B_Boat_Transport_01_F",
	"B_Boat_Armed_01_minigun_F",
	"B_T_Boat_Transport_01_F",
	"B_T_Boat_Armed_01_minigun_F",
	"B_SDV_01_F",
	"O_Boat_Transport_01_F",
	"O_Boat_Armed_01_hmg_F",
	"O_T_Boat_Transport_01_F",
	"O_T_Boat_Armed_01_hmg_F",
	"rhsusf_mkvsoc"
];

// Large storage area placement position offsets.
KP_liberation_large_storage_positions = [
	[-5.59961,3.60938,0.6],
	[-3.99902,3.60938,0.6],
	[-2.39941,3.60938,0.6],
	[-0.799805,3.60938,0.6],
	[0.800781,3.60938,0.6],
	[2.40039,3.60938,0.6],
	[4.00098,3.60938,0.6],
	[5.60059,3.60938,0.6],
	[-5.59961,1.80859,0.6],
	[-3.99902,1.80859,0.6],
	[-2.39941,1.80859,0.6],
	[-0.799805,1.80859,0.6],
	[0.800781,1.80859,0.6],
	[2.40039,1.80859,0.6],
	[4.00098,1.80859,0.6],
	[5.60059,1.80859,0.6],
	[-5.59961,0.00976563,0.6],
	[-3.99902,0.00976563,0.6],
	[-2.39941,0.00976563,0.6],
	[-0.799805,0.00976563,0.6],
	[0.800781,0.00976563,0.6],
	[2.40039,0.00976563,0.6],
	[4.00098,0.00976563,0.6],
	[5.60059,0.00976563,0.6],
	[-5.59961,-1.79102,0.6],
	[-3.99902,-1.79102,0.6],
	[-2.39941,-1.79102,0.6],
	[-0.799805,-1.79102,0.6],
	[0.800781,-1.79102,0.6],
	[2.40039,-1.79102,0.6],
	[4.00098,-1.79102,0.6],
	[5.60059,-1.79102,0.6],
	[-5.59961,-3.58984,0.6],
	[-3.99902,-3.58984,0.6],
	[-2.39941,-3.58984,0.6],
	[-0.799805,-3.58984,0.6],
	[0.800781,-3.58984,0.6],
	[2.40039,-3.58984,0.6],
	[4.00098,-3.58984,0.6],
	[5.60059,-3.58984,0.6]
];

// Small storage area placement position offsets.
KP_liberation_small_storage_positions = [
	[-2.34961,1.80078,0.6],
	[-0.75,1.80078,0.6],
	[0.850586,1.80078,0.6],
	[2.4502,1.80078,0.6],
	[-2.34961,0,0.6],
	[-0.75,0,0.6],
	[0.850586,0,0.6],
	[2.4502,0,0.6],
	[-2.34961,-1.79883,0.6],
	[-0.75,-1.79883,0.6],
	[0.850586,-1.79883,0.6],
	[2.4502,-1.79883,0.6]
];

// DO NOT CHANGE (unless you know what you are doing).
GRLIB_endgame = 0;
if ( GRLIB_blufor_cap > 100 ) then { GRLIB_blufor_cap = 100 };
GRLIB_offload_diag = false;

KP_liberation_production_interval = ceil KP_liberation_production_interval;
