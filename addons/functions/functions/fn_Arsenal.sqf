//if (!isServer) exitWith {}; // possible fix is to remove not !

params[ [ "_obj", objNull, [ objNull ] ] ];
if (isNull _obj || { !( alive _obj ) } ) exitWith { hint "Arsenal could not be Loaded" };

private ["_backpacks", "_magazines", "_weapons", "_items"];

_backpacks = [
  "10th_ANPRC_521",
  "Tenthed_ARCB",
  "Tenthed_HMG_Backpack",
  "10th_ILCS_Rucksack_Medical",
  "Tenthed_HMG_02_F_Bag_Auto",
  "Tenthed_M56S_Rucksack",
  "Tenthed_M56S_Rucksack_Medic_Radio",
  "Tenthed_M56S_Rucksack_Medic",
  "Tenthed_M56S_Rucksack_Radio",
  "Tenthed_Mortar_Backpack",
  "Tenthed_ArcherMissileTablet",
  "Tenthed_Marine_Medical_Rucksack",
  "Tenthed_Marine_Heavy_Rucksack",
  "Tenthed_Marine_Rucksack"
];
_magazines = [
  "OPTRE_M41_Twin_Smoke_O",
  "30Rnd_65x39_caseless_khaki_mag_Tracer",
  "TCF_12Rnd_127x40_Mag_APT",
  "TCF_12Rnd_127x40_Mag_NARQ",
  "OPTRE_8Rnd_127x40_Mag",
  "OPTRE_M41_Twin_HEAP",
  "TCF_8Rnd_127x40_Mag_FR",
  "TCF_12Rnd_127x40_Mag_SAPHE",
  "OPTRE_M41_Twin_Smoke_P",
  "TCF_12Rnd_127x40_Mag_SS",
  "OPTRE_M41_Twin_Smoke_R",
  "Tenthed_48Rnd_5x23mm_Mag_tracer",
  "Tenthed_48Rnd_5x23mm_FMJ_Mag",
  "OPTRE_12Rnd_127x40_Mag_Tracer",
  "TCF_12Rnd_127x40_Mag_NARQT",
  "OPTRE_M41_Twin_HE",
  "OPTRE_M41_Twin_Smoke_B",
  "Tenthed_60Rnd_5x23mm_Mag",
  "Tenthed_48Rnd_5x23mm_Mag",
  "TCF_8Rnd_127x40_Mag_FG",
  "ACE_30Rnd_65x39_caseless_mag_Tracer_Dim",
  "Tenthed_60Rnd_5x23mm_Mag_tracer",
  "OPTRE_12Rnd_127x40_Mag",
  "OPTRE_M41_Twin_Smoke_W",
  "Tenthed_48Rnd_5x23mm_JHP_Mag",
  "TCF_12Rnd_127x40_Mag_SST",
  "OPTRE_M41_Twin_HE_SACLOS_ProximityFuse",
  "OPTRE_M41_Twin_Smoke_G",
  "OPTRE_M41_Twin_Smoke_Y",
  "30Rnd_65x39_caseless_black_mag",
  "30Rnd_65x39_caseless_mag",
  "30Rnd_65x39_caseless_black_mag_Tracer",
  "OPTRE_16Rnd_127x40_Mag",
  "OPTRE_M41_Twin_HEAT_Thermal",
  "OPTRE_M41_Twin_HE_Thermal_ProximityFuse",
  "30Rnd_65x39_caseless_khaki_mag",
  "TCF_12Rnd_127x40_Mag_JHP",
  "TCF_12Rnd_127x40_Mag_JHPT",
  "OPTRE_8Rnd_127x40_Mag_Tracer",
  "OPTRE_16Rnd_127x40_Mag_Tracer",
  "TCF_12Rnd_127x40_Mag_AP",
  "OPTRE_M41_Twin_HEAT",
  "OPTRE_M41_Twin_HEAT_SALH",
  "OPTRE_M41_Twin_HE_SALH_ProximityFuse",
  "Tenthed_60Rnd_5x23mm_Mag_tracer_yellow",
  "Tenthed_48Rnd_5x23mm_Mag_tracer_yellow",
  "TCF_12Rnd_127x40_Mag_SAPHET",
  "OPTRE_M41_Twin_HEAT_SACLOS",
  "OPTRE_M41_Twin_HEAT_G",
  "30Rnd_65x39_caseless_mag_Tracer",
  "OPTRE_8Rnd_127x40_AP_Mag",
  "OPTRE_42Rnd_95x40_Mag_Tracer",
  "TCF_60Rnd_5x23mm_Mag_HVT",
  "SC_5Rnd_50HV_Mag",
  "TCF_UGL_8Gauge_Pellet",
  "OPTRE_6Rnd_8Gauge_Slugs",
  "TCF_10Rnd_86x70_Mag",
  "TCF_20Rnd_86x70_Mag_Tracer",
  "ACE_10Rnd_338_API526_Mag",
  "OPTRE_4Rnd_145x114_APFSDS_Mag",
  "OPTRE_100Rnd_95x40_Box_Tracer_Yellow",
  "UGL_FlareWhite_F",
  "GRL45_6rnd_Smoke_Orange",
  "OPTRE_12Rnd_12Gauge_Pellets_Tracer",
  "OPTRE_1Rnd_Smoke_Grenade_shell",
  "OPTRE_3Rnd_SmokeGreen_Grenade_shell",
  "TCF_20Rnd_86x70_Mag_AP",
  "1Rnd_SmokeOrange_Grenade_shell",
  "GRL45_6rnd_Impact_Green",
  "ACE_6Rnd_12Gauge_Pellets_No0_Buck",
  "OPTRE_1Rnd_MasterKey_Slugs",
  "OPTRE_4Rnd_145x114_HEDP_Mag",
  "TCF_300Rnd_95x60_Box_HPSAPT",
  "MA_50Rnd_390_Subsonic_Mag",
  "OPTRE_3Rnd_SmokePurple_Grenade_shell",
  "MA_36Rnd_95x40_HPSAP_Mag_Tracer",
  "TCF_400Rnd_762x51_Box_AP",
  "OPTRE_1Rnd_SmokeRed_Grenade_shell",
  "TCF_4Rnd_145x114_Mag_SST",
  "TCF_10Rnd_86x70_Mag_SS",
  "GRL45_6rnd_Impact_Orange",
  "TCF_20Rnd_65x48_Mag_Tracer",
  "GRL45_6rnd_Flare_Yellow",
  "OPTRE_200Rnd_95x40_Box_Tracer",
  "TCF_64Rnd_57x31_Mag_HVT",
  "OPTRE_400Rnd_762x51_Box_Tracer",
  "TCF_100Rnd_762x51_Mag_Tracer",
  "OPTRE_48Rnd_5x23mm_Mag",
  "MA_100Rnd_762x51_Shredder_Mag_Tracer",
  "TCF_150Rnd_30x06_Mag_Tracer",
  "3Rnd_UGL_FlareYellow_F",
  "TCF_20Rnd_65x48_Mag_APT",
  "MA_200Rnd_762x51_FMJAP_Mag",
  "ACE_40mm_Flare_red",
  "TCF_36Rnd_95x40_Mag_SS",
  "TCF_200Rnd_762x51_Box_APT",
  "OPTRE_15Rnd_762x51_Mag_Tracer",
  "ACE_10Rnd_762x67_Mk248_Mod_1_Mag",
  "TCF_60Rnd_5x23mm_Mag_HV",
  "TCF_32Rnd_762x51_Mag_JHPT",
  "6Rnd_12Gauge_Pellets",
  "1Rnd_SmokeGreen_Grenade_shell",
  "TCF_762_jhp_mag_tracer",
  "OPTRE_3Rnd_SmokeYellow_Grenade_shell",
  "OPTRE_36Rnd_95x40_Mag",
  "MA_35Rnd_390_Subsonic_Mag_Tracer",
  "OPTRE_100Rnd_762x51_Box",
  "GRL45_6rnd_Flare_Blue",
  "TCF_20Rnd_65x48_Mag_SLAPT",
  "TCF_15Rnd_762x51_Mag_SST",
  "GRL45_6rnd_Flare_Red",
  "Tenthed_SC_200Rnd_338_Mag",
  "OPTRE_6Rnd_8Gauge_HEDP",
  "MA_35Rnd_390_AP_Mag_Tracer",
  "TCF_15Rnd_762x51_Mag_SLAPT",
  "OPTRE_1Rnd_SmokeYellow_Grenade_shell",
  "OPTRE_10Rnd_127x99",
  "TCF_10Rnd_86x70_Mag_JHPT",
  "OPTRE_36Rnd_95x40_Mag_Tracer",
  "TCF_20Rnd_86x70_Mag_JHPT",
  "TCF_20Rnd_86x70_Mag_SLAP",
  "ACE_10Rnd_762x67_Mk248_Mod_0_Mag",
  "TCF_signalsmokeYlw",
  "ACE_6Rnd_12Gauge_Pellets_No4_Bird",
  "TCF_100Rnd_762x51_Mag",
  "TCF_762_slap_mag_tracer",
  "ACE_40mm_Flare_white",
  "TCF_42Rnd_95x40_Mag_JHPT",
  "TCF_15Rnd_762x51_Mag_JHP",
  "3Rnd_SmokeYellow_Grenade_shell",
  "TCF_42Rnd_95x40_Mag_SST",
  "TCF_60Rnd_762x51_Mag_JHP",
  "TCF_20Rnd_86x70_Mag_JHP",
  "TCF_6Rnd_8Gauge_Beanbag",
  "MA_36Rnd_95x40_HPSAP_Mag",
  "TCF_300Rnd_95x60_Box_HPSAP",
  "TCF_42Rnd_95x40_Mag_SS",
  "1Rnd_SmokeBlue_Grenade_shell",
  "OPTRE_15Rnd_762x51_Mag",
  "1Rnd_Smoke_Grenade_shell",
  "100Rnd_65x39_caseless_mag",
  "TCF_20Rnd_86x70_Mag",
  "TCF_20Rnd_86x70_Mag_SS",
  "TCF_15Rnd_762x51_Mag_SS",
  "3Rnd_UGL_FlareCIR_F",
  "10Rnd_338_Mag",
  "OPTRE_signalSmokeY",
  "TCF_300Rnd_95x60_Box_SS",
  "GRL45_6rnd_Impact_White",
  "TCF_300Rnd_762x51_Box_APT",
  "TCF_300Rnd_95x60_Box_JHP",
  "TCF_12Rnd_8Gauge_HEDP",
  "MA_35Rnd_390_AP_Mag",
  "OPTRE_10RND_338_AP",
  "ACE_6Rnd_12Gauge_Pellets_No3_Buck",
  "OPTRE_60Rnd_5x23mm_Mag",
  "TCF_48Rnd_5x23mm_Mag_HVT",
  "OPTRE_36Rnd_95x40_Mag_Tracer_Yellow",
  "100Rnd_65x39_caseless_mag_Tracer",
  "OPTRE_60Rnd_762x51_Mag",
  "MA_50Rnd_390_Shredder_Mag",
  "OPTRE_60Rnd_5x23mm_Mag_tracer",
  "3Rnd_SmokeRed_Grenade_shell",
  "OPTRE_100Rnd_762x51_Box_Tracer_Yellow",
  "GRL45_6rnd_Impact_Red",
  "GRL45_6rnd_HEDP",
  "Tenthed_30Rnd_762x39_Shrapnel_Mag_Tracer_Yellow",
  "ACE_40mm_Flare_green",
  "OPTRE_64Rnd_57x31_Mag_Tracer_Yellow",
  "TCF_3Rnd_UGL_8Gauge_Beanbag",
  "TCF_64Rnd_57x31_Mag_HV",
  "OPTRE_200Rnd_95x40_Box",
  "MA_35Rnd_390_Shredder_Mag_Tracer",
  "OPTRE_200Rnd_95x40_Box_Tracer_Yellow",
  "GRL45_6rnd_HE",
  "MA_200Rnd_762x51_Shredder_Mag_Tracer",
  "TCF_100Rnd_95x40_Box_SST",
  "MA_100Rnd_762x51_FMJAP_Mag",
  "ACE_10Rnd_338_300gr_HPBT_Mag",
  "TCF_15Rnd_762x51_Mag_JHPT",
  "TCF_100Rnd_95x60_Box_JHP",
  "SC_30Rnd_65x39mm_Mag",
  "OPTRE_32Rnd_762x51_Mag_UW",
  "OPTRE_12Rnd_12Gauge_Pellets",
  "3Rnd_SmokePurple_Grenade_shell",
  "TCF_UGL_8Gauge_Beanbag",
  "TCF_36Rnd_95x40_Mag_JHP",
  "TCF_762_jhp_mag",
  "TCF_20Rnd_86x70_Mag_SLAPT",
  "TCF_signalsmokePnk",
  "MA_100Rnd_762x51_Shredder_Mag",
  "TCF_4Rnd_145x114_Mag_NARQ",
  "OPTRE_60Rnd_5x23mm_Mag_tracer_yellow",
  "OPTRE_12Rnd_8Gauge_Slugs",
  "TCF_4Rnd_145x114_Mag_HVAPT",
  "OPTRE_42Rnd_95x40_Mag",
  "OPTRE_signalSmokeG",
  "3Rnd_UGL_FlareGreen_F",
  "OPTRE_48Rnd_5x23mm_Mag_tracer",
  "ACE_6Rnd_12Gauge_Pellets_No1_Buck",
  "TCF_100Rnd_95x60_Box_SS",
  "ACE_40mm_Flare_ir",
  "TCF_60Rnd_5x23mm_Mag_JHPT",
  "MA_50Rnd_390_AP_Mag_Tracer",
  "TCF_48Rnd_5x23mm_Mag_HV",
  "ACE_6Rnd_12Gauge_Pellets_No2_Buck",
  "1Rnd_HE_Grenade_shell",
  "TCF_48Rnd_5x23mm_Mag_SST",
  "TCF_6Rnd_8Gauge_Incendiary",
  "GRL45_6rnd_Impact_Purple",
  "OPTRE_1Rnd_SmokePurple_Grenade_shell",
  "OPTRE_12Rnd_8Gauge_Pellets",
  "MA_50Rnd_390_Subsonic_Mag_Tracer",
  "OPTRE_5Rnd_127x99",
  "OPTRE_6Rnd_8Gauge_Pellets",
  "TCF_15Rnd_762x51_Mag_APT",
  "UGL_FlareGreen_F",
  "3Rnd_SmokeBlue_Grenade_shell",
  "1Rnd_SmokeYellow_Grenade_shell",
  "TCF_signalsmokeGrn",
  "GRL45_6rnd_Smoke_Yellow",
  "TCF_36Rnd_95x40_Mag_SST",
  "TCF_20Rnd_65x48_Mag_AP",
  "OPTRE_64Rnd_57x31_Mag_Tracer",
  "OPTRE_15Rnd_762x51_AP_Mag_Tracer",
  "1Rnd_SmokeRed_Grenade_shell",
  "TCF_64Rnd_57x31_Mag_SS",
  "OPTRE_60Rnd_762x51_Mag_Tracer_Yellow",
  "OPTRE_3Rnd_SmokeRed_Grenade_shell",
  "TCF_20Rnd_65x48_Mag_JHP",
  "OPTRE_32Rnd_762x51_Mag_Tracer",
  "OPTRE_32Rnd_762x51_Mag",
  "GRL45_6rnd_Smoke_White",
  "100Rnd_65x39_caseless_black_mag",
  "OPTRE_4Rnd_145x114_HVAP_Mag_D",
  "MA_50Rnd_390_AP_Mag",
  "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow",
  "MA_35Rnd_390_Subsonic_Mag",
  "TCF_3Rnd_UGL_8Gauge_Pellet",
  "OPTRE_1Rnd_MasterKey_Pellets",
  "GRL45_6rnd_Flare_CIR",
  "TCF_32Rnd_762x51_Mag_APT",
  "MA_36Rnd_95x40_Subsonic_Mag_Tracer",
  "OPTRE_signalSmokeR",
  "MA_100Rnd_762x51_FMJAP_Mag_Tracer",
  "1Rnd_SmokePurple_Grenade_shell",
  "TCF_12Rnd_8Gauge_Beanbag",
  "3Rnd_UGL_FlareWhite_F",
  "OPTRE_48Rnd_5x23mm_Mag_tracer_yellow",
  "ACE_30Rnd_65x47_Scenar_msbs_mag",
  "ACE_10Rnd_762x67_Berger_Hybrid_OTM_Mag",
  "UGL_FlareCIR_F",
  "TCF_Gamma_762_mag",
  "TCF_6Rnd_8Gauge_FR",
  "OPTRE_signalSmokeB",
  "TCF_UGL_FlareBlue_F",
  "TCF_20Rnd_86x70_Mag_APT",
  "OPTRE_3Rnd_Smoke_Grenade_shell",
  "Commando_20Rnd_65_TracerY_Mag",
  "3Rnd_Smoke_Grenade_shell",
  "30Rnd_65x39_caseless_msbs_mag_Tracer",
  "TCF_4Rnd_145x114_Mag_HEDPT",
  "TCF_4Rnd_145x114_Mag_SS",
  "TCF_762_slap_mag",
  "TCF_200Rnd_95x40_Box_JHP",
  "OPTRE_15Rnd_762x51_AP_Mag",
  "MA_50Rnd_390_Shredder_Mag_Tracer",
  "TCF_20Rnd_86x70_Mag_SST",
  "100Rnd_65x39_caseless_khaki_mag",
  "100Rnd_65x39_caseless_khaki_mag_tracer",
  "SC_35Rnd_762x51_Mag",
  "TCF_200Rnd_95x40_Box_SST",
  "GRL45_6rnd_Smoke_Green",
  "GRL45_6rnd_Smoke_Blue",
  "TCF_32Rnd_762x51_Mag_SS",
  "TCF_48Rnd_5x23mm_Mag_SS",
  "OPTRE_100Rnd_95x40_Box_Tracer",
  "TCF_10Rnd_86x70_Mag_JHP",
  "TCF_200Rnd_95x40_Box_SS",
  "TCF_10Rnd_86x70_Mag_SLAP",
  "TCF_100Rnd_95x40_Box_JHP",
  "MA_200Rnd_762x51_Shredder_Mag",
  "OPTRE_3Rnd_SmokeOrange_Grenade_shell",
  "TCF_3Rnd_UGL_8Gauge_Slug",
  "GRL45_6rnd_Smoke_Red",
  "OPTRE_12Rnd_12Gauge_HE",
  "TCF_12Rnd_8Gauge_Incendiary",
  "TCF_100Rnd_762x51_Box_APT",
  "TCF_150Rnd_30x06_Mag",
  "TCF_10Rnd_86x70_Mag_Tracer",
  "TCF_10Rnd_86x70_Mag_SLAPT",
  "OPTRE_15Rnd_762x51_Mag_Tracer_Yellow",
  "TCF_200Rnd_95x40_Box_JHPT",
  "UGL_FlareRed_F",
  "OPTRE_signalSmokeP",
  "3Rnd_SmokeGreen_Grenade_shell",
  "OPTRE_3Rnd_MasterKey_Slugs",
  "GRL45_6rnd_Impact_Blue",
  "TCF_64Rnd_57x31_Mag_SST",
  "TCF_10Rnd_86x70_Mag_SST",
  "OPTRE_42Rnd_95x40_Mag_Tracer_Yellow",
  "100Rnd_65x39_caseless_black_mag_tracer",
  "TCF_60Rnd_762x51_Mag_JHPT",
  "3Rnd_UGL_FlareRed_F",
  "GRL45_6rnd_Smoke_Purple",
  "TCF_60Rnd_5x23mm_Mag_JHP",
  "TCF_60Rnd_5x23mm_Mag_SST",
  "UGL_FlareYellow_F",
  "TCF_20Rnd_65x48_Mag_SLAP",
  "OPTRE_100Rnd_762x51_Box_Tracer",
  "ACE_6Rnd_12Gauge_Pellets_No4_Buck",
  "OPTRE_60Rnd_762x51_Mag_Tracer",
  "TCF_3Rnd_UGL_FlareBlue_F",
  "GRL45_6rnd_Flare_White",
  "OPTRE_12Rnd_12Gauge_Smoke_Tracer",
  "TCF_48Rnd_5x23mm_Mag_JHP",
  "TCF_4Rnd_145x114_Mag_APFSDST",
  "TCF_100Rnd_95x60_Box_SST",
  "TCF_15Rnd_762x51_Mag_SLAP",
  "OPTRE_10RND_338_SP",
  "TCF_60Rnd_762x51_Mag_APT",
  "TCF_300Rnd_95x60_Box_JHPT",
  "Tenthed_10Rnd_338_Mag_Yellow",
  "Commando_20Rnd_65_ReloadY_Mag",
  "TCF_200Rnd_762x51_Box_AP",
  "TCF_100Rnd_95x40_Box_SS",
  "TCF_10Rnd_86x70_Mag_APT",
  "OPTRE_3Rnd_SmokeBlue_Grenade_shell",
  "3Rnd_HE_Grenade_shell",
  "GRL45_6rnd_Impact_Yellow",
  "GRL45_6rnd_Flare_Green",
  "TCF_42Rnd_762x54_Mag_Tracer",
  "TCF_64Rnd_57x31_Mag_JHPT",
  "OPTRE_4Rnd_145x114_HVAP_Mag",
  "TCF_20Rnd_65x48_Mag_JHPT",
  "OPTRE_100Rnd_95x40_Box",
  "TCF_36Rnd_95x40_Mag_JHPT",
  "MA_35Rnd_390_Shredder_Mag",
  "TCF_100Rnd_95x40_Box_JHPT",
  "Commando_20Rnd_65_ReloadR_Mag",
  "OPTRE_1Rnd_SmokeOrange_Grenade_shell",
  "TCF_42Rnd_762x54_Mag",
  "TCF_32Rnd_762x51_Mag_AP",
  "TCF_60Rnd_5x23mm_Mag_SS",
  "ACE_100Rnd_65x39_caseless_mag_Tracer_Dim",
  "TCF_100Rnd_762x51_Box_AP",
  "30Rnd_65x39_caseless_msbs_mag",
  "TCF_60Rnd_762x51_Mag_AP",
  "TCF_UGL_8Gauge_Slug",
  "TCF_signalsmokeRed",
  "OPTRE_3Rnd_MasterKey_Pellets",
  "OPTRE_48Rnd_5x23mm_FMJ_Mag",
  "TCF_48Rnd_5x23mm_Mag_JHPT",
  "OPTRE_4Rnd_145x114_HEDP_Mag_D",
  "TCF_20Rnd_65x48_Mag_SS",
  "TCF_300Rnd_95x60_Box_SST",
  "ACE_30Rnd_65_Creedmor_msbs_mag",
  "OPTRE_10RND_338_VLD",
  "SC_5Rnd_50HE_Mag",
  "OPTRE_12Rnd_8Gauge_HEDP",
  "6Rnd_12Gauge_Slug",
  "TCF_100Rnd_95x60_Box_JHPT",
  "TCF_42Rnd_95x40_Mag_JHP",
  "TCF_32Rnd_762x51_Mag_JHP",
  "TCF_32Rnd_762x51_Mag_SST",
  "OPTRE_64Rnd_57x31_Mag",
  "OPTRE_12Rnd_12Gauge_HE_Tracer",
  "OPTRE_48Rnd_5x23mm_JHP_Mag",
  "OPTRE_4Rnd_145x114_APFSDS_Mag_D",
  "TCF_10Rnd_86x70_Mag_AP",
  "TCF_300Rnd_762x51_Box_AP",
  "TCF_15Rnd_762x51_Mag_AP",
  "MA_200Rnd_762x51_FMJAP_Mag_Tracer",
  "TCF_Gamma_762_mag_Tracer",
  "Command_20Rnd_65_TracerR_Mag",
  "OPTRE_1Rnd_SmokeBlue_Grenade_shell",
  "OPTRE_signalSmokeO",
  "3Rnd_SmokeOrange_Grenade_shell",
  "GRL45_6rnd_Whistle",
  "TCF_64Rnd_57x31_Mag_JHP",
  "OPTRE_12Rnd_12Gauge_Smoke",
  "TCF_12Rnd_8Gauge_FR",
  "Commando_20Rnd_65_Mag",
  "MA_36Rnd_95x40_Subsonic_Mag",
  "TCF_400Rnd_762x51_Box_APT",
  "ACE_HuntIR_M203",
  "OPTRE_1Rnd_SmokeGreen_Grenade_shell",
  "TCF_4Rnd_145x114_Mag_NARQT",
  "TCF_2Rnd_50x137_PEN",
  "TCF_2Rnd_50x137_AA",
  "TCF_2Rnd_50x137_GUIDED",
  "OPAEX_M_145x114_APFSDS_12Rnd",
  "TCF_2Rnd_50x137_SALH",
  "OPAEX_M_D20_3GL",
  "TCF_2Rnd_50x137_HE",
  "TCF_2Rnd_50x137_THERMO",
  "OPAEX_M_D20_GL",
  "TCF_2Rnd_50x137_SACLOS",
  "TCF_2Rnd_50x137_HEAT",
  "TCF_30Rnd_30x06_Mag_JHP",
  "TCF_1Rnd_50x137_HE",
  "OPTRE_100Rnd_30x06_Mag",
  "TCF_1Rnd_50x137_HEAT",
  "TCF_30Rnd_30x06_Mag_AP",
  "TCF_1Rnd_50x137_THERMO",
  "TCF_1Rnd_50x137_PEN",
  "TCF_30Rnd_30x06_Mag_JHP_Tracer",
  "OPTRE_100Rnd_30x06_Mag_Tracer",
  "TCF_30Rnd_30x06_Mag_Ball",
  "TCF_30Rnd_30x06_Mag_Tracer",
  "OPTRE_40Rnd_30x06_Mag",
  "OPTRE_40Rnd_30x06_Mag_Tracer",
  "TCF_30Rnd_30x06_Mag_AP_Tracer",
  "RD_45Rnd_45HP_Mag",
  "Laserbatteries"
];
_weapons = [
  "Itemwatch",
  "TCF_M41_SSR",
  "TCF_M96_LAW_Blk",
  "TCF_M96_LAW_Des",
  "TCF_M96_LAW",
  "TCF_M96_LAW_Arc",
  "Tenthed_M7_Folded",
  "OPTRE_M6C",
  "TCF_M6D",
  "LM_OPCAN_AR0M37",
  "LM_OPCAN_AR0M37_SHT",
  "TCF_MA1B",
  "OPTRE_BR45",
  "OPTRE_M45ATAC",
  "Tenthed_SC_Rifle_PKMP",
  "Tenthed_M7",
  "Tenthed_Etilka",
  "Tenthed_ARG88M",
  "Tenthed_ARG47",
  "OPTRE_M58S",
  "OPTRE_BR55",
  "OPTRE_BR55HB",
  "OPTRE_MA5B",
  "SC_Rifle_AR12",
  "SC_Rifle_AR12C",
  "OPTRE_Commando_Black",
  "SC_Rifle_SpecterM1",
  "LM_OPCAN_ARMX",
  "MA_BR55_HB",
  "MA_MA2B_AR",
  "TCF_M247_GPMG",
  "OPTRE_M73",
  "TCF_CM_12",
  "TCF_M33_T",
  "TCF_Saw_Gamma",
  "MA_H4_SAW",
  "TCF_M73H",
  "TCF_Saw_Gamma_Stealth",
  "LM_OPCAN_DMR0M37",
  "OPTRE_M393_DMR",
  "OPTRE_BR37",
  "SC_Rifle_SSR55C",
  "TCF_MRS10",
  "LM_OPCAN_MRS",
  "TCF_CR77",
  "LM_OPCAN_AR0M37_GL",
  "TCF_MA1BGL",
  "OPTRE_MA5BGL",
  "OPTRE_M319",
  "OPTRE_M319N",
  "LM_OPCAN_ARMX_GL",
  "SC_Rifle_SpecterM1_GL",
  "MA_GRL_45",
  "TCF_RAS_Black_24",
  "TCF_RAS_24",
  "TCF_MA5KF",
  "OPTRE_M12_SOC",
  "TCF_M28A2",
  "OPTRE_MA37K",
  "OPTRE_CQS48S_Chihuahua_Automatic",
  "OPTRE_M45",
  "OPTRE_M45A",
  "OPTRE_M45E",
  "OPTRE_M45TAC",
  "OPTRE_M6B_Riot_Shield",
  "OPTRE_M7_Riot_Shield",
  "OPTRE_CQS48_Bulldog_Automatic",
  "OPTRE_SRS99C",
  "OPTRE_SRS99D",
  "OPTRE_SRM77_S1",
  "TCF_SRS99E",
  "potato_vz99_carryWeapon",
  "TCF_M57_Pilum_b",
  "TCF_M57_Pilum",
  "SC_Rifle_Ghoul",
  "OPTRE_M319M",
  "OPTRE_M319s",
  "TCF_M30DFL",
  "TCF_M30DFLSF",
  "OPTRE_HMG38",
  "OPTRE_M392_DMR",
  "OPTRE_SRM77_S2"
];
_items = [
  "Tenthed_M56_Scout_Helmet",
  "Tenthed_M56SR_Helmet_Xyric",
  "Tenthed_M56SR_Helmet_Woo",
  "Tenthed_M56SR_Helmet_Void",
  "Tenthed_M56SR_Helmet_Vex",
  "Tenthed_M56SR_Helmet_Tiger",
  "Tenthed_M56SR_Helmet_Thor",
  "Tenthed_M56SR_Helmet_Storm",
  "Tenthed_M56SR_Helmet_Slim",
  "Tenthed_M56SR_Helmet_Silver",
  "Tenthed_M56SR_Helmet_Rook",
  "Tenthed_M56SR_Helmet_Rambler",
  "Tenthed_M56SR_Helmet_Radical",
  "Tenthed_M56SR_Helmet_Rad",
  "Tenthed_M56SR_Helmet_Nova",
  "Tenthed_M56SR_Helmet_Nobody",
  "Tenthed_M56SR_Helmet_Mom",
  "Tenthed_M56SR_Helmet_Metro",
  "Tenthed_M56SR_Helmet_McInnes",
  "Tenthed_M56SR_Helmet_Lion",
  "Tenthed_M56SR_Helmet_Life",
  "Tenthed_M56SR_Helmet_Knight",
  "Tenthed_M56SR_Helmet_Jody",
  "Tenthed_M56SR_Helmet_Jad",
  "Tenthed_M56SR_Helmet_Jack",
  "Tenthed_M56SR_Helmet_Infra",
  "Tenthed_M56SR_Helmet_Hetzen",
  "Tenthed_M56SR_Helmet_Hatchet",
  "Tenthed_M56SR_Helmet_HardDrop",
  "Tenthed_M56SR_Helmet_Gunner",
  "Tenthed_M56SR_Helmet_Goober",
  "Tenthed_M56SR_Helmet_Gater",
  "Tenthed_M56SR_Helmet_Goldy",
  "Tenthed_M56SR_Helmet_Glint",
  "Tenthed_M56SR_Helmet_Dubbos",
  "Tenthed_M56SR_Helmet_Evader",
  "Tenthed_M56SR_Helmet_Failure",
  "Tenthed_M56SR_Helmet_Freedom",
  "Tenthed_M56SR_Helmet_Flipper",
  "Tenthed_M56SR_Helmet_Fynn",
  "Tenthed_M56SR_Helmet_Dovah",
  "Tenthed_M56SR_Helmet_Dinner",
  "Tenthed_M56SR_Helmet_Den",
  "Tenthed_M56SR_Helmet_Dadbod",
  "Tenthed_M56SR_Helmet_Crusader",
  "Tenthed_M56SR_Helmet_Cheeto",
  "Tenthed_M56SR_Helmet_Chaotix",
  "Tenthed_M56SR_Helmet_Clem",
  "Tenthed_M56SR_Helmet_Cookie",
  "Tenthed_M56SR_Helmet_Cossack",
  "Tenthed_M56SR_Helmet_Boomstick",
  "Tenthed_M56SR_Helmet_Blindwolf",
  "Tenthed_M56SR_Helmet_Blasphemy",
  "Tenthed_M56SR_Helmet_Astral",
  "Tenthed_M56A_Helmet_Akira",
  "Tenthed_M56SR_Helmet_Atlas",
  "Tenthed_M56SR_Helmet_Bbstine",
  "Tenthed_M56SR_Helmet_Beans",
  "Tenthed_M56SR_Helmet",
  "Tenthed_M56G_Helmet",
  "Tenthed_M56E_Helmet_Shakes",
  "Tenthed_M56E_Helmet_Naffen",
  "Tenthed_M56E_Helmet_Marvel",
  "Tenthed_M56E_Helmet_Mage",
  "Tenthed_M56E_Helmet_Mac",
  "Tenthed_M56E_Helmet_Lion",
  "Tenthed_M56E_Helmet_Leek",
  "Tenthed_M56E_Helmet_Gutts",
  "Tenthed_M56E_Helmet_Dex",
  "Tenthed_M56E_Helmet_Boomstick",
  "Tenthed_M56E_Helmet_Bardok",
  "Tenthed_M56E_Helmet",
  "Tenthed_M56A_Helmet_Tiny",
  "Tenthed_M56A_Helmet_Sound",
  "Tenthed_M56A_Helmet_Optional",
  "Tenthed_M56A_Helmet_Nightmare",
  "Tenthed_M56A_Helmet_Lego",
  "Tenthed_M56A_Helmet",
  "Tenthed_M56SR_Enlisted_Helmet",
  "Tenthed_M56SR_OdinEnlisted_Helmet",
  "Tenthed_M56SR_ZeusEnlisted_Helmet",
  "Tenthed_M56S_BDU_WhiteSilver",
  "Tenthed_M56S_BDU_Grey",
  "Tenthed_M56S_BDU_Green",
  "Tenthed_M56S_BDU_Desert",
  "Tenthed_M56S_BDU",
  "Tenthed_M56R_Vest_Akira",
  "Tenthed_M56R_Vest_Atlas",
  "Tenthed_M56R_Vest_Astral",
  "Tenthed_M56R_Vest_Bardok",
  "Tenthed_M56R_Vest_Enlisted_Sniper",
  "Tenthed_M56R_Vest_Enlisted_Rifleman",
  "Tenthed_M56R_Vest_Enlisted_Rifleman_radio_right",
  "Tenthed_M56R_Vest_Enlisted_CQB",
  "Tenthed_M56R_Vest_OdinEnlisted_Sniper",
  "Tenthed_M56R_Vest_OdinEnlisted_Rifleman",
  "Tenthed_M56R_Vest_OdinEnlisted_Rifleman_radio_right",
  "Tenthed_M56R_Vest_OdinEnlisted_CQB",
  "Tenthed_M56R_Vest_ZeusEnlisted_Sniper",
  "Tenthed_M56R_Vest_ZeusEnlisted_Rifleman",
  "Tenthed_M56R_Vest_ZeusEnlisted_Rifleman_radio_right",
  "Tenthed_M56R_Vest_ZeusEnlisted_CQB",
  "Tenthed_M56R_Vest_Sniper",
  "Tenthed_M56R_Recon_Vest",
  "Tenthed_M56R_Vest_Rifleman_radio_right",
  "Tenthed_M56R_Vest_Rifleman_ODST_radio_right",
  "Tenthed_M56R_Medic_Vest",
  "Tenthed_M56R_Light_Vest",
  "Tenthed_M56R_Vest_Woo",
  "Tenthed_M56R_Vest_Xyric",
  "Tenthed_M56R_Vest_Rifleman",
  "Tenthed_M56R_Vest_CQB",
  "Tenthed_M56R_Vest_Storm",
  "Tenthed_M56R_Vest_Thor",
  "Tenthed_M56R_Vest_Tiger",
  "Tenthed_M56R_Vest_Tiny",
  "Tenthed_M56R_Vest_Vex",
  "Tenthed_M56R_Vest_Void",
  "Tenthed_M56R_Vest_Rad",
  "Tenthed_M56R_Vest_Radical",
  "Tenthed_M56R_Vest_Rambler",
  "Tenthed_M56R_Vest_Rook",
  "Tenthed_M56R_Vest_Shakes",
  "Tenthed_M56R_Vest_Silver",
  "Tenthed_M56R_Vest_Slim",
  "Tenthed_M56R_Vest_Sound",
  "Tenthed_M56R_Vest_Naffen",
  "Tenthed_M56R_Vest_Nightmare",
  "Tenthed_M56R_Vest_Nobody",
  "Tenthed_M56R_Vest_Nova",
  "Tenthed_M56R_Vest_Optional",
  "Tenthed_M56R_Vest_Lion",
  "Tenthed_M56R_Vest_Mac",
  "Tenthed_M56R_Vest_Mage",
  "Tenthed_M56R_Vest_Marvel",
  "Tenthed_M56R_Vest_McInnes",
  "Tenthed_M56R_Vest_Mom",
  "Tenthed_M56R_Vest_Metro",
  "Tenthed_M56R_Vest_Life",
  "Tenthed_M56R_Vest_Lego",
  "Tenthed_M56R_Vest_Leek",
  "Tenthed_M56R_Vest_Knight",
  "Tenthed_M56R_Vest_Jody",
  "Tenthed_M56R_Vest_Jad",
  "Tenthed_M56R_Vest_Infra",
  "Tenthed_M56R_Vest_Jack",
  "Tenthed_M56R_Vest_Hetzen",
  "Tenthed_M56R_Vest_Hatchet",
  "Tenthed_M56R_Vest_HardDrop",
  "Tenthed_M56R_Vest_Gutts",
  "Tenthed_M56R_Vest_Gunner",
  "Tenthed_M56R_Vest_Goober",
  "Tenthed_M56R_Vest_Goldy",
  "Tenthed_M56R_Vest_Glint",
  "Tenthed_M56R_Vest_Gater",
  "Tenthed_M56R_Vest_Fynn",
  "Tenthed_M56R_Vest_Freedom",
  "Tenthed_M56R_Vest_Flipper",
  "Tenthed_M56R_Vest_Failure",
  "Tenthed_M56R_Vest_Evader",
  "Tenthed_M56R_Vest_Dubbos",
  "Tenthed_M56R_Vest_Dovah",
  "Tenthed_M56R_Vest_Dinner",
  "Tenthed_M56R_Vest_Dex",
  "Tenthed_M56R_Vest_Den",
  "Tenthed_M56R_Vest_Dadbod",
  "Tenthed_M56R_Vest_Crusader",
  "Tenthed_M56R_Vest_Cossack",
  "Tenthed_M56R_Vest_Cookie",
  "Tenthed_M56R_Vest_Clem",
  "Tenthed_M56R_Vest_Cheeto",
  "Tenthed_M56R_Vest_Chaotix",
  "Tenthed_M56R_Vest_Boomstick",
  "Tenthed_M56R_Vest_Blindwolf",
  "Tenthed_M56R_Vest_Blasphemy",
  "Tenthed_M56R_Vest_Beans",
  "Tenthed_M56R_Vest_Bbstine",
  "ItemGPS",
  "B_UavTerminal",
  "Chemlight_blue",
  "Chemlight_green",
  "ACE_Chemlight_HiBlue",
  "ACE_Chemlight_HiGreen",
  "ACE_Chemlight_HiRed",
  "ACE_Chemlight_HiWhite",
  "ACE_Chemlight_HiYellow",
  "ACE_Chemlight_IR",
  "ACE_Chemlight_Orange",
  "Chemlight_red",
  "ACE_Chemlight_UltraHiOrange",
  "ACE_Chemlight_White",
  "Chemlight_yellow",
  "B_IR_Grenade",
  "SmokeShellBlue",
  "SmokeShellGreen",
  "SmokeShellOrange",
  "SmokeShellPurple",
  "SmokeShellRed",
  "SmokeShellYellow",
  "OPTRE_M2_Smoke_Blue",
  "OPTRE_M2_Smoke_Green",
  "OPTRE_M2_Smoke_Orange",
  "OPTRE_M2_Smoke_Purple",
  "OPTRE_M2_Smoke_Red",
  "OPTRE_M2_Smoke",
  "OPTRE_M2_Smoke_Yellow",
  "HandGrenade",
  "OPTRE_M8_Flare_Blue",
  "OPTRE_M8_Flare_Green",
  "OPTRE_M8_Flare",
  "OPTRE_M8_Flare_White",
  "OPTRE_M8_Flare_Yellow",
  "SmokeShell",
  "OPTRE_M9_Frag",
  "MiniGrenade",
  "OPTRE_c7_remote_throwable_sticky_mag",
  "APERSMineDispenser_Mag",
  "C7_Remote_Mag",
  "C12_Remote_Mag",
  "OPTRE_FC_BubbleShield",
  "APERSMine_Range_Mag",
  "ACE_FlareTripMine_Mag",
  "APERSTripMine_Wire_Mag",
  "SLAMDirectionalMine_Wire_Mag",
  "APERSBoundingMine_Range_Mag",
  "ClaymoreDirectionalMine_Remote_Mag",
  "M168_Remote_Mag",
  "SatchelCharge_Remote_Mag",
  "Itemwatch",
  "ACE_Altimeter",
  "ItemRadio",
  "ItemCompass",
  "ACE_Yardage450",
  "ACE_Vector",
  "OPTRE_Binoculars",
  "ACE_VectorDay",
  "ace_dragon_sight",
  "Rangefinder",
  "ACE_MX2A",
  "Laserdesignator_03",
  "Laserdesignator",
  "Laserdesignator_01_khk_F",
  "Laserdesignator_02",
  "Laserdesignator_02_ghex_F",
  "OPTRE_Smartfinder_Vector",
  "OPTRE_Smartfinder",
  "Binocular",
  "MA_ODST_CustomNVG_1",
  "MA_EOD_CBRN_Attachment_NVG",
  "MA_ODST_NVG_CAM_L",
  "MA_ODST_NVG_CAM_R",
  "MA_ODST_NVG_COM_MOD_L",
  "MA_ODST_NVG_COM_MOD_R",
  "MA_ODST_NVG_NOD",
  "MA_ODST_NVG_Diver",
  "MA_ODST_NVG_Rebreather",
  "MA_ODST_NVG_Sens_L",
  "MA_ODST_NVG_SpecOp",
  "MA_ODST_NVG_Sens_R",
  "MA_ODST_NVG_Lead",
  "MA_Scout_Attachment_NVG",
  "LM_OPCAN_CAM",
  "LM_OPCAN_CAMSNI",
  "LM_OPCAN_CAMUA",
  "LM_OPCAN_CAMUA2",
  "LM_OPCAN_COMM",
  "LM_OPCAN_COMMCAM",
  "LM_OPCAN_COMMCAMSNI",
  "LM_OPCAN_COMMCAMUA",
  "LM_OPCAN_COMMCAMUA2",
  "LM_OPCAN_COMSNI",
  "LM_OPCAN_COMMUA",
  "LM_OPCAN_COMMUA2",
  "LM_OPCAN_FLA",
  "LM_OPCAN_FLACAM",
  "LM_OPCAN_FLACAMSNI",
  "LM_OPCAN_FLACAMUA",
  "LM_OPCAN_FLACAMUA2",
  "LM_OPCAN_FLASNI",
  "LM_OPCAN_FLAUA",
  "LM_OPCAN_FLAUA2",
  "LM_OPCAN_SNI",
  "LM_OPCAN_UA",
  "LM_OPCAN_UA2",
  "OPTRE_NVGT_C",
  "TCF_CAM",
  "TCF_CAMSNI",
  "TCF_CAMUA",
  "TCF_CAMUA2",
  "TCF_COMM",
  "TCF_COMMCAM",
  "TCF_COMMCAMSNI",
  "TCF_COMMCAMUA2",
  "TCF_COMMCAMUA",
  "TCF_COMSNI",
  "TCF_COMMUA",
  "TCF_COMMUA2",
  "TCF_FLA",
  "TCF_FLACAM",
  "TCF_FLACAMSNI",
  "TCF_FLACAMUA",
  "TCF_FLACAMUA2",
  "TCF_FLASNI",
  "TCF_FLAUA",
  "TCF_FLAUA2",
  "TCF_SNI",
  "TCF_UA",
  "TCF_UA2",
  "OPTRE_NVG",
  "TCF_NVG_HURS",
  "OPTRE_NVG_CNM",
  "OPTRE_NVG_UL",
  "OPTRE_NVG_HUL",
  "OPTRE_NVG_HUL3",
  "OPTRE_NVG_HURS",
  "OPTRE_NVG_HURS_CNM",
  "OPTRE_NVG_HURS_HUL",
  "OPTRE_NVG_MVI",
  "OPTRE_NVG_MVI_CNM",
  "OPTRE_NVG_MVI_HUL",
  "OPTRE_NVG_MVI_UL",
  "OPTRE_NVG_MVI_UL_CNM",
  "OPTRE_NVG_MVI_UL_HUL",
  "OPTRE_NVG_UA_CNM",
  "OPTRE_NVG_UA_HUL",
  "OPTRE_NVG_UA_HURS",
  "OPTRE_NVG_UA_HURS_CNM",
  "OPTRE_NVG_UA_HURS_HUL",
  "OPTRE_NVG_UA_UL",
  "OPTRE_NVG_UA_UL_CNM",
  "OPTRE_NVG_UAB_CNM",
  "OPTRE_NVG_UAB_HUL",
  "OPTRE_NVG_UAB_UL",
  "OPTRE_NVG_UAB_UL_CNM",
  "OPTRE_NVG_UAB_UL_HUL",
  "OPTRE_NVG_UL_CNM",
  "OPTRE_NVG_UL_HUL",
  "VES_NVG_Collar",
  "OPTRE_NVG_UA",
  "OPTRE_NVG_UAB",
  "VES_NVG_Collar_VAC",
  "OPTRE_NVG_Visor",
  "MA_ODST_CustomFacewear_1",
  "MA_EOD_CBRN_Facewear_Attachment",
  "MA_ODST_Facewear_CAM_L",
  "MA_ODST_Facewear_CAM_R",
  "MA_ODST_Facewear_COM_MOD_L",
  "MA_ODST_Facewear_COM_MOD_R",
  "MA_ODST_Facewear_Diver",
  "MA_ODST_Facewear_NOD",
  "MA_ODST_Facewear_Rebreather",
  "MA_ODST_Facewear_Sens_L",
  "MA_ODST_Facewear_Sens_R",
  "MA_ODST_Facewear_SpecOp",
  "MA_ODST_Facewear_Lead",
  "MA_MKVB_Grenadier_Chest",
  "MA_MKVB_Grenadier_Collar",
  "MA_MKVB_ODST_Chest",
  "MA_MVB_Grenadier_Kit",
  "MA_MKVB_Scout_Vest",
  "MA_Scout_Facewear_Attachment",
  "LM_OPCAN_Eyepiece",
  "LM_OPCAN_URB_Shemagh",
  "LM_OPCAN_BRW_Shemagh",
  "LM_OPCAN_Shemagh",
  "LM_OPCAN_DES_Shemagh",
  "LM_OPCAN_URB_UP_Shemagh",
  "LM_OPCAN_BRW_UP_Shemagh",
  "LM_OPCAN_DES_UP_Shemagh",
  "LM_OPCAN_UP_Shemagh",
  "LM_OPCAN_URB_Shemagheye",
  "LM_OPCAN_BRW_Shemagheye",
  "LM_OPCAN_Shemagheye",
  "LM_OPCAN_DES_Shemagheye",
  "LM_OPCAN_URB_UP_Shemagheye",
  "LM_OPCAN_BRW_UP_Shemagheye",
  "LM_OPCAN_DES_UP_Shemagheye",
  "LM_OPCAN_UP_Shemagheye",
  "G_Aviator",
  "TCF_Balaclava_G_ARC",
  "TCF_Balaclava_ARC",
  "G_Balaclava_blk",
  "G_Balaclava_BlueStrips",
  "G_Balaclava_combat",
  "TCF_Balaclava_G_DES",
  "TCF_Balaclava_DES",
  "TCF_Balaclava_G_DIG",
  "TCF_Balaclava_DIG",
  "G_Balaclava_Flecktarn",
  "G_Balaclava_Halloween_01",
  "G_Balaclava_oli",
  "G_Balaclava_lowprofile",
  "G_Balaclava_Scarecrow_01",
  "G_Balaclava_Flames1",
  "TCF_Balaclava_SMA",
  "TCF_Balaclava_G_SMA",
  "G_Balaclava_Skull1",
  "TCF_Balaclava_G_TRO",
  "TCF_Balaclava_TRO",
  "G_Balaclava_Tropentarn",
  "TCF_Balaclava_G_WDL",
  "TCF_Balaclava_WDL",
  "G_Bandanna_aviator",
  "G_Bandanna_beast",
  "G_Bandanna_blk",
  "G_Bandanna_BlueFlame1",
  "G_Bandanna_BlueFlame2",
  "G_Bandanna_CandySkull",
  "G_Bandanna_khk",
  "G_Bandanna_oli",
  "G_Bandanna_OrangeFlame1",
  "G_Bandanna_RedFlame1",
  "G_Bandanna_shades",
  "G_Bandanna_Skull1",
  "G_Bandanna_Syndikat1",
  "G_Bandanna_Skull2",
  "G_Bandanna_sport",
  "G_Bandanna_tan",
  "G_Bandanna_Vampire_01",
  "G_Bandanna_Syndikat2",
  "TCF_Eyepiece",
  "OPTRE_Glasses_Cigar",
  "OPTRE_Glasses_Cigarette",
  "TCF_Mask_ARC",
  "TCF_Mask_DES",
  "TCF_Mask_DIG",
  "TCF_Mask_SMA",
  "TCF_Mask_TRO",
  "TCF_Mask_WDL",
  "VES_HUD_RayBans",
  "VES_HUD_RayBans_Bandana_Beast",
  "VES_HUD_RayBans_Bandana",
  "VES_HUD_RayBans_Bandana_Green",
  "VES_HUD_RayBans_Bandana_Tan",
  "VES_HUD_Balaclava_Beast",
  "VES_HUD_Balaclava_Black",
  "VES_HUD_Balaclava_Joker",
  "VES_HUD_Balaclava_Gray",
  "VES_HUD_Balaclava_Punisher",
  "VES_HUD_Balaclava_White",
  "OPTRE_EyePiece",
  "OPTRE_HUD_blk_Glasses",
  "OPTRE_HUD_b_Glasses",
  "OPTRE_HUD_In_Glasses",
  "OPTRE_HUD_g_Glasses",
  "OPTRE_HUD_Glasses",
  "OPTRE_HUD_p_Glasses",
  "OPTRE_HUD_w_Glasses",
  "OPTRE_HUD_r_Glasses",
  "VES_HUD_Balaclava_G_Beast",
  "VES_HUD_Balaclava_G_Black",
  "VES_HUD_Balaclava_G_Gray",
  "VES_HUD_Balaclava_G_Punisher",
  "VES_HUD_Balaclava_G_Joker",
  "VES_HUD_Balaclava_G_White",
  "VES_HUD_Visor",
  "TCF_URB_Shemagh",
  "TCF_BRW_Shemagh",
  "TCF_DES_Shemagh",
  "TCF_Shemagh",
  "TCF_URB_UP_Shemagh",
  "TCF_BRW_UP_Shemagh",
  "TCF_DES_UP_Shemagh",
  "TCF_UP_Shemagh",
  "TCF_URB_Shemagheye",
  "TCF_Shemagheye",
  "TCF_BRW_Shemagheye",
  "TCF_URB_UP_Shemagheye",
  "TCF_DES_Shemagheye",
  "TCF_BRW_UP_Shemagheye",
  "TCF_DES_UP_Shemagheye",
  "TCF_UP_Shemagheye",
  "G_Balaclava_TI_blk_F",
  "G_Balaclava_TI_G_blk_F",
  "G_Balaclava_TI_tna_F",
  "G_Balaclava_TI_G_tna_F",
  "OPTRE_CBRN",
  "OPTRE_CBRN_S",
  "OPTRE_CBRN_S2",
  "OPTRE_Glasses_Visor",
  "OPTRE_Glasses_Visor_Blue",
  "ACE_RangeTable_82mm",
  "ACE_adenosine",
  "ACE_artilleryTable",
  "ACE_Banana",
  "ACE_fieldDressing",
  "ACE_elasticBandage",
  "ACE_packingBandage",
  "ACE_quikclot",
  "TCF_Biofoam",
  "OPTRE_Biofoam",
  "ACE_bloodIV",
  "ACE_bloodIV_250",
  "ACE_bloodIV_500",
  "ACE_bodyBag",
  "ACE_CableTie",
  "ACE_Canteen",
  "ACE_Canteen_Empty",
  "ACE_Canteen_Half",
  "ACE_DefusalKit",
  "ACE_EarPlugs",
  "ACE_EntrenchingTool",
  "ACE_epinephrine",
  "ACE_Fortify",
  "ACE_Flashlight_MX991",
  "ACE_IR_Strobe_Item",
  "ACE_HuntIR_monitor",
  "ACE_M26_Clacker",
  "ACE_Clacker",
  "ACE_Flashlight_XL50",
  "ACE_MapTools",
  "ace_marker_flags_black",
  "ace_marker_flags_green",
  "ace_marker_flags_blue",
  "ace_marker_flags_orange",
  "ace_marker_flags_purple",
  "ace_marker_flags_red",
  "ace_marker_flags_white",
  "ace_marker_flags_yellow",
  "OPTRE_MedKit",
  "Medikit",
  "ACE_microDAGR",
  "MineDetector",
  "ACE_morphine",
  "OPTRE_Medigel",
  "ACE_personalAidKit",
  "ACE_plasmaIV",
  "ACE_plasmaIV_250",
  "ACE_plasmaIV_500",
  "ACE_PlottingBoard",
  "ACE_RangeCard",
  "ACE_salineIV",
  "ACE_salineIV_250",
  "ACE_salineIV_500",
  "ACE_SpareBarrel",
  "ACE_splint",
  "ACE_SpottingScope",
  "ACE_SpraypaintBlack",
  "ACE_SpraypaintBlue",
  "ACE_SpraypaintGreen",
  "ACE_SpraypaintRed",
  "ACE_SpraypaintWhite",
  "ACE_SpraypaintYellow",
  "ACE_surgicalKit",
  "ToolKit",
  "ACE_tourniquet",
  "ACE_wirecutter",
  "optic_tws_mg",
  "optic_SOS",
  "optic_MRCO",
  "optic_Arco_blk_F",
  "optic_LRPS_tna_F",
  "optic_Yorris",
  "Optre_Recon_Sight",
  "TCF_MA5C_SmartLink_legacy",
  "optic_tws",
  "optic_Arco_AK_blk_F",
  "optic_ico_01_black_f",
  "ACE_optic_LRPS_PIP",
  "TCF_SENT_CG",
  "TCF_REC_holo",
  "optic_AMS",
  "ACE_optic_Arco_2D",
  "ACE_optic_SOS_PIP",
  "Optre_Recon_Sight_UNSC",
  "TCF_REC_holo_Red",
  "TCF_SENT_white_CG",
  "optic_KHS_hex",
  "optic_Arco",
  "optic_ERCO_snd_F",
  "optic_Holosight_khk_F",
  "OPTRE_MA5_BUIS",
  "optic_AMS_snd",
  "optic_ACO_grn",
  "optic_MRD_black",
  "optic_Nightstalker",
  "optic_KHS_old",
  "OPTRE_BR45_Scope",
  "ACE_optic_MRCO_2D",
  "ACE_optic_Hamr_PIP",
  "Optre_Recon_Sight_Snow",
  "optic_KHS_tan",
  "optic_Aco",
  "optic_Holosight_smg",
  "OPTRE_M393_ACOG",
  "TCF_MA5_SmartLink_legacy",
  "TCF_M393_EOTECH_v2",
  "optic_SOS_khk_F",
  "optic_Arco_ghex_F",
  "OPTRE_M7_Sight",
  "ACE_optic_Arco_PIP",
  "ACE_optic_Hamr_2D",
  "OPTRE_SRS99_Scope",
  "OPTRE_MA5C_SmartLink",
  "OPTRE_SRM_Sight",
  "optic_Hamr",
  "optic_ERCO_khk_F",
  "optic_Holosight_smg_khk_F",
  "OPTRE_M12_Optic",
  "OPTRE_BMR_Scope",
  "Optre_Recon_Sight_Red",
  "TCF_MA1B_AmmoCounter_NoIS",
  "optic_LRPS",
  "optic_ACO_grn_smg",
  "OPTRE_M392_Scope",
  "OPTRE_SRS99C_Scope",
  "OPTRE_M393_EOTECH",
  "OPTRE_M73_SmartLink",
  "OPTRE_MA5_SmartLink",
  "TCF_SENT_CGRed",
  "TCF_REC_holo_Gre",
  "TCF_MA1B_AmmoCounter",
  "TCF_M6D_Smartlink",
  "optic_AMS_khk",
  "optic_ERCO_blk_F",
  "OPTRE_M6C_Scope",
  "Optre_Recon_Sight_Desert",
  "TCF_MA5_SmartLink_v2",
  "optic_dms",
  "optic_LRPS_ghex_F",
  "optic_Holosight_blk_F",
  "OPTRE_HMG38_CarryHandle",
  "optic_NVS",
  "optic_DMS_ghex_F",
  "OPTRE_BR55HB_Scope",
  "OPTRE_M6G_Scope",
  "Optre_Recon_Sight_Green",
  "TCF_MA5C_SmartLink_v2",
  "optic_KHS_blk",
  "optic_Aco_smg",
  "optic_Holosight",
  "optic_Hamr_khk_F",
  "optic_Holosight_smg_blk_F",
  "OPTRE_M393_Scope",
  "ACE_optic_LRPS_2D",
  "ACE_optic_SOS_2D",
  "TCF_SENT_CGGre",
  "OPTRE_M7_Laser",
  "TCF_MA1B_Flashlight",
  "TCF_M7_Flashlight_IR",
  "OPTRE_M45_Flashlight_green",
  "acc_pointer_IR",
  "OPTRE_BMR_Laser",
  "acc_flashlight",
  "acc_flashlight_pistol",
  "OPTRE_M45_Flashlight",
  "TCF_M6_Flashlight_IR",
  "TCF_Rifle_Flashlight_IR",
  "OPTRE_M6G_Flashlight",
  "OPTRE_M6C_Laser",
  "OPTRE_M45_Flashlight_red",
  "OPTRE_DMR_Light",
  "OPTRE_BMR_Flashlight",
  "OPTRE_M12_Laser",
  "OPTRE_M45_Flashlight_blue",
  "ACE_acc_pointer_green",
  "OPTRE_M6C_compensator",
  "OPTRE_MA5Suppressor",
  "OPTRE_M7_silencer",
  "OPTRE_M393_Suppressor",
  "muzzle_snds_L",
  "OPTRE_M12_Suppressor",
  "ACE_muzzle_mzls_B",
  "OPTRE_SRS99D_Suppressor",
  "OPTRE_M6_silencer",
  "muzzle_snds_H_MG_blk_F",
  "OPTRE_MA37KSuppressor",
  "SC_Reflex_R_Yellow",
  "optic_Arco_AK_arid_F",
  "optic_DMS_weathered_Kir_F",
  "Optre_Evo_Sight",
  "Optre_Evo_Sight_Yellow",
  "OPTRE_BR55HB_Scope_Grey",
  "SC_Reflex_R_Green",
  "optic_Arco_lush_F",
  "optic_DMS_weathered_F",
  "SC_T1",
  "Optre_Evo_Sight_Spartan",
  "SC_Reflex_C1_Red",
  "SC_TSO55",
  "optic_Arco_arid_F",
  "optic_Holosight_arid_F",
  "Optre_Evo_Sight_Riser_Innie",
  "SC_Reflex_C_Red",
  "optic_Arco_AK_lush_F",
  "OPTRE_M12_Optic_Green",
  "Optre_Evo_Sight_Covie",
  "SC_Reflex_Chevron_R",
  "optic_ico_01_sand_f",
  "Optre_Evo_Sight_Riser_Yellow",
  "MA_BR55HB_Scope",
  "optic_ico_01_camo_f",
  "SC_X11",
  "optic_Holosight_lush_F",
  "OPTRE_M12_Optic_Red",
  "Optre_Evo_Sight_Riser_Covie",
  "SC_Reflex_R_Blue",
  "SC_Reflex_C_Blue",
  "Optre_Evo_Sight_Innie",
  "Optre_Evo_Sight_Riser",
  "Optre_Evo_Sight_Riser_Spartan",
  "optic_ico_01_f",
  "acc_flashlight_smg_01",
  "ACE_DBAL_A3_Green",
  "ACE_DBAL_A3_Red",
  "ACE_SPIR",
  "muzzle_snds_B_lush_F",
  "TCF_muzzle_IMP_CYL",
  "muzzle_snds_m_snd_F",
  "muzzle_snds_B",
  "muzzle_snds_B_arid_F",
  "ACE_muzzle_mzls_L",
  "TCF_muzzle_cylinder",
  "muzzle_snds_B_snd_F",
  "muzzle_snds_338_green",
  "muzzle_snds_M",
  "muzzle_snds_338_sand",
  "ACE_muzzle_mzls_338",
  "SC_B2_Suppressor",
  "muzzle_snds_m_khk_F",
  "TCF_muzzle_Modified",
  "muzzle_snds_338_black",
  "muzzle_snds_65_TI_blk_F",
  "muzzle_snds_B_khk_F",
  "bipod_02_F_blk",
  "bipod_01_F_khk",
  "bipod_01_F_blk",
  "OPTRE_Riot_Shield_Icon_Police",
  "OPTRE_Riot_Shield_Icon_A2S",
  "OPTRE_Riot_Shield_Icon_Jolly",
  "bipod_02_F_lush",
  "bipod_01_F_mtp",
  "bipod_02_F_hex",
  "bipod_02_F_arid",
  "bipod_03_F_blk",
  "OPTRE_Riot_Shield_Icon_Virgil",
  "bipod_01_F_snd",
  "OPTRE_Riot_Shield_Icon_MEU",
  "OPTRE_Riot_Shield_Icon_Innie",
  "bipod_03_F_oli",
  "OPTRE_Riot_Shield_Icon_ODSTBlue",
  "bipod_02_F_tan",
  "OPTRE_BR45Grip",
  "OPTRE_Riot_Shield_Icon_UNSC",
  "OPTRE_Riot_Shield_Icon_CMA",
  "OPTRE_Riot_Shield_Icon_Fist",
  "OPTRE_Riot_Shield_Icon_ODST",
  "ACE_bodyBag_blue",
  "ACE_bodyBag_white",
  "ACE_Can_Franta",
  "ACE_Can_RedGull",
  "ACE_Can_Spirit",
  "ACE_DAGR",
  "ACE_DeadManSwitch",
  "ACE_suture",
  "ACE_WaterBottle",
  "ACE_WaterBottle_Half",
  "ACE_UAVBattery",
  "IEDUrbanBig_Remote_Mag",
  "IEDLandBig_Remote_Mag",
  "DemoCharge_Remote_Mag",
  "ATMine_Range_Mag",
  "UNSCMine_Range_Mag",
  "M41_IED_C_Remote_Mag",
  "M41_IED_Remote_Mag",
  "M41_IED_B_Remote_Mag",
  "IEDLandSmall_Remote_Mag",
  "IEDUrbanSmall_Remote_Mag",
  "ItemcTab",
  "ItemMicroDAGR",
  "ItemAndroid",
  "FIR_PDU",
  "ItemWatch",
  "TFAR_microdagr",
  "ChemicalDetector_01_watch_F",
  "TFAR_anprc148jem",
  "TFAR_anprc152",
  "TFAR_anprc154",
  "TFAR_fadak",
  "TFAR_pnr1000a",
  "TFAR_rf7800str",
  "ItemMap",
  "OPTRE_FC_NVG",
  "TCF_M57_QAS2",
  "TCF_Pilum_Scope",
  "VES_HUD_APR_01",
  "VES_HUD_APR_02",
  "VES_HUD_APR_03",
  "mgsr_eyepatch_goggles",
  "mgsr_headbag_goggles",
  "mgsr_scarf_black",
  "mgsr_scarf",
  "mgsr_scarf_khaki",
  "mgsr_scarf_red",
  "G_Shades_Black",
  "G_Shades_Blue",
  "G_Shades_Green",
  "G_Shades_Red",
  "I_UavTerminal",
  "C_UavTerminal",
  "O_UavTerminal",
  "I_E_UavTerminal",
  "ACE_HandFlare_Yellow",
  "ACE_HandFlare_White",
  "ACE_HandFlare_Red",
  "ACE_HandFlare_Green",
  "Rev_Demine",
  "Rev_darter",
  "Rev_Pelican",
  "Rev_Pelter",
  "Rev_Roller",
  "Rev_Designator",
  "ItemcTabHCam",
  "ACE_Sunflower_Seeds",
  "VES_TacSpraycan",
  "acex_intelitems_notepad",
  "ACE_painkillers",
  "ACE_Tripod",
  "mgsr_eyepatch",
  "ACE_muzzle_mzls_smg_01",
  "muzzle_snds_acp",
  "Tenthed_M56A_Helmet_Karma",
  "Tenthed_M56A_Helmet_Harpy",
  "Tenthed_M56SR_Helmet_Miller",
  "Tenthed_M56SR_Helmet_Ninja",
  "Tenthed_M56SR_Helmet_Teal",
  "Tenthed_M56SR_Helmet_Velo",
  "Tenthed_M56SR_Helmet_Vio",
  "Tenthed_M56R_Vest_Harpy",
  "Tenthed_M56R_Vest_Karma",
  "Tenthed_M56R_Vest_Miller",
  "Tenthed_M56R_Vest_Ninja",
  "Tenthed_M56R_Vest_Teal",
  "Tenthed_M56R_Vest_Velo",
  "Tenthed_M56R_Vest_Vio",
  "optic_MRD",
  "SC_MPML_Scope",
  "OPTRE_MA37K_Optic",
  "OPTRE_M6D_Scope_Jungle",
  "OPTRE_M6D_Scope_Desert",
  "OPTRE_M6D_Scope_Black",
  "OPTRE_M6D_Scope",
  "OPTREP_BR55HB_Scope",
  "OPTRE_MA37_Smartlink_Scope",
  "OPTRE_M45_Flashlight_cyan",
  "OPTRE_M45_Flashlight_purple",
  "OPTRE_M45_Flashlight_yellow",
  "TCF_M6D_Flashlight",
  "OPTRE_M6D_Flashlight",
  "OPTRE_M6D_Flashlight_Black",
  "OPTRE_M6D_Flashlight_Desert",
  "OPTRE_M6D_Flashlight_Jungle",
  "OPTRE_M6D_IR_Laser",
  "OPTRE_M6D_IR_Black",
  "OPTRE_M6D_IR_Desert",
  "OPTRE_M6D_Vis_Red_Laser",
  "OPTRE_M6D_IR_Jungle",
  "OPTRE_M6D_Vis_Red_Desert",
  "OPTRE_M6D_Vis_Red_Black",
  "OPTRE_M6D_Vis_Red_Jungle",
  "OPTRE_M7_Flashlight",
  "acc_esd_01_flashlight",
  "muzzle_snds_H_snd_F",
  "muzzle_snds_H_khk_F",
  "muzzle_snds_H",
  "muzzle_snds_570",
  "muzzle_snds_93mmg",
  "muzzle_snds_93mmg_tan",
  "muzzle_snds_H_MG_khk_F",
  "muzzle_snds_H_MG",
  "SC_SSP9_Silencer",
  "muzzle_snds_58_blk_F",
  "muzzle_snds_58_ghex_F",
  "muzzle_snds_58_hex_F",
  "muzzle_snds_65_TI_hex_F",
  "muzzle_snds_65_TI_ghex_F",
  "muzzle_antenna_01_f",
  "muzzle_antenna_03_f",
  "muzzle_antenna_02_f",
  "ACE_muzzle_mzls_93mmg",
  "ACE_muzzle_mzls_smg_02",
  "ACE_muzzle_mzls_H"
];

[_obj, _backpacks] call BIS_fnc_addVirtualBackpackCargo;
[_obj, _magazines] call BIS_fnc_addVirtualMagazineCargo;
[_obj, _weapons] call BIS_fnc_addVirtualWeaponCargo;
[_obj, _items] call BIS_fnc_addVirtualItemCargo;

private _bftarray = [];
_bftarray append _backpacks;
_bftarray append _magazines;
_bftarray append _weapons;
_bftarray append _items;

[_obj, false, false] call ace_arsenal_fnc_initBox;
[_obj, _bftarray] call ace_arsenal_fnc_addVirtualItems;

//[ _obj, [
//	_backpacks,
//	_magazines,
//	_weapons,
//		_items
//], true ] call ace_arsenal_fnc_initBox; //true to add arsenal globally

//hint "Arsenal was loaded";