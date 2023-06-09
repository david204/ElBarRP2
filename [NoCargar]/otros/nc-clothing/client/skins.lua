custom_skins = {
    'a_f_y_ava',
    'a_f_y_brenda',
    'a_f_y_brenda_cop',
    'np_nancy',
    'a_m_o_eugene',
    'Mr_kebun',
    'a_m_m_mel',
    'koil',
    'a_m_o_bill',
    'ig_huck',
    'walter',
    'ig_nino',
    'p_e_d_ott',
    'ig_speedy',
    's_m_m_snow',
    'a_m_m_taco_kid',
    's_m_y_happy',
    'g_m_m_buddha',
    'ig_buddha',
    'a_m_y_stbla_m',
    'a_m_y_erf',
    'a_m_m_ktown_m',
    'ig_terry_m',
    'a_m_y_skater_m',
    'francis_j_francer',
    'g_m_y_famfor_01_m',
    'ig_trafficwarden_m',
    'shaggy',
    'a_m_m_taco',
    'ig_mike',
    'ig_holden',
    'ig_sayeed_w',
    'ig_tony',
    'ig_shevy',
    'u_m_y_coop',
    'bobby_brown',
    'ramee',
    'ig_jay_norris',
    'ig_omega',
    's_m_y_joker',
    'a_c_cat_01',
    'a_c_panther',
    'a_c_chop',
    'a_c_husky',
    'a_c_poodle',
    'a_c_pug',
    'a_c_rabbit_01',
    'a_c_boar',
    'a_c_chimp',
    'ig_bm',
    'ig_erik',
    'ig_randy',
    'ig_razz',
    'ig_senor',
    'ig_shahar',
    'ig_twogood',
    'a_c_chimp',
    'a_c_chop',
    'a_c_sloth',
    'a_f_m_trish',
    'a_m_m_bigd',
    'davidwonders',
    'dragon',
    'g_m_y_gary_p',
    'Hulk1',
    'Hulk2',
    'ig_avonB',
    'ig_bogg',
    'ig_cesar',
    'ig_cornwood',
    'ig_eddieD',
    'ig_garrett',
    'ig_jacket',
    'ig_ken',
    'ig_leslie',
    'ig_milton',
    'ig_petunia',
    'ig_rudi',
    'ig_siz',
    'ig_taochen',
    'ig_tessa',
    'ig_ziggyf',
    'igor',
    'Ironman',
    'k_abdul',
    'k_fatrandy',
    'k_judd',
    'k_peanut',
    'mando',
    'marigold',
    'mando',
    'Mechangodzilla',
    's_m_y_bovice',
    's_m_m_jacob',
    'ThePredator',
    'u_m_y_coop_casual',
    'u_m_y_coop_cop',
    'policePed',
    "Arsenio",
    "Blanco",
    "csb_ramp_gang",
    "hao",
    "ig_erik",
    "ig_gouf",
    "ig_hqrreh",
    "ig_oozi",
    "ig_secrets",
    "ig_senor",
    "ig_stix",
    "lilsmoke",
    "Papag",
    "ig_flik",
    "if_fam",
    "ig_sxnor",
    "francis_small_francer",
    "ig_anothersenor",
    "ig_lebox",
    "ig_yeager.yft", 
}


whitelisted_to_use_custom_skins = {
    9065,
	44,
	3894,
	3615,
	6554,
	3602,
	2604,
	4371,
	40,
    801,
    115,
    8,
    351,
    5761,
    68,
    11853,
    11854,
    11855,
    3631,
    4701,
    3761,
    41,
    5294,
    11527,
    10962,
    251,
    4190,
    4423,
    80,
    12961,
    9324
}

function printSkinHashes()
    for k,v in pairs(custom_skins) do
        print(v..": "..GetHashKey(v))
    end
end
-- printSkinHashes()

function isCustomSkin(skin)
	local foundSkin = false
	for k,v in pairs(custom_skins) do
		if skin == GetHashKey(v) then foundSkin = true end
	end
	return foundSkin
end

function isInSkins(skin)
    local foundSkin = false
    for k,v in pairs(custom_skins) do
        if skin == v then
            return true
        end
    end
    for k,v in pairs(fr_skins) do
        if skin == v then
            return true
        end
    end
    for k,v in pairs(frm_skins) do
        if skin == v then
            return true
        end
    end
    return false
end

function canUseCustomSkins()
    return true
end

--player_zero player_one player_two
fr_skins = {
    'mp_f_freemode_01',
    'a_f_y_ava',
    'a_f_y_brenda',
    'a_f_y_brenda_cop',
    'np_nancy',
    'a_f_y_zelda',
    'a_f_y_windsong',
    'a_f_y_ellie',
    'ig_bride',

        -- NP
        'a_f_m_trish',
        'ig_petunia',
        'ig_siz',
        'ig_tessa',
        'marigold',

        -- CAYO ISLAND
        'a_f_y_beach_02',
        'a_f_y_clubcust_04',
        'cs_patricia_02',
        'ig_isldj_04_d_01',
        'ig_isldj_04_d_02',
        'ig_isldj_04_e_01',
        'ig_jackie',
        'ig_kaylee',
        's_f_y_clubbar_02',
        'IG_GeorginaCheng',
        'IG_Wendy',
        'A_F_Y_Bevhills_05',

        ------------------

        -- TUNER
        'A_F_Y_CarClub_01',
        'CSB_Mimi',
        'CSB_Sessanta',
        'S_F_M_Autoshop_01',
        'S_F_M_RetailStaff_01',
        ------------------

    'a_f_m_beach_01',
    'a_f_m_bevhills_01',
    'a_f_m_bevhills_02',
    'a_f_m_bodybuild_01',
    'a_f_m_business_02',
    'a_f_m_downtown_01',
    'a_f_m_eastsa_01',
    'a_f_m_eastsa_02',
    'a_f_m_fatbla_01',
    'a_f_m_fatcult_01',
    'a_f_m_fatwhite_01',
    'a_f_m_ktown_01',
    'a_f_m_ktown_02',
    'a_f_m_prolhost_01',
    'a_f_m_salton_01',
    'a_f_m_skidrow_01',
    'a_f_m_soucentmc_01',
    'a_f_m_soucent_01',
    'a_f_m_soucent_02',
    'a_f_m_tourist_01',
    'a_f_m_trampbeac_01',
    'a_f_m_tramp_01',
    -- 'a_f_o_genstreet_01',
    'a_f_o_indian_01',
    'a_f_o_ktown_01',
    'a_f_o_salton_01',
    'a_f_o_soucent_01',
    'a_f_o_soucent_02',
    'a_f_y_beach_01',
    'a_f_y_bevhills_01',
    'a_f_y_bevhills_02',
    'a_f_y_bevhills_03',
    'a_f_y_bevhills_04',
    'a_f_y_business_01',
    'a_f_y_business_02',
    'a_f_y_business_03',
    'a_f_y_business_04',
    'a_f_y_eastsa_01',
    'a_f_y_eastsa_02',
    'a_f_y_eastsa_03',
    'a_f_y_epsilon_01',
    'a_f_y_fitness_01',
    'a_f_y_fitness_02',
    'a_f_y_genhot_01',
    'a_f_y_golfer_01',
    'a_f_y_hiker_01',
    'a_f_y_hipster_01',
    'a_f_y_hipster_02',
    'a_f_y_hipster_03',
    'a_f_y_hipster_04',
    'a_f_y_indian_01',
    'a_f_y_juggalo_01',
    'a_f_y_runner_01',
    'a_f_y_rurmeth_01',
    'a_f_y_scdressy_01',
    'a_f_y_skater_01',
    'a_f_y_soucent_01',
    'a_f_y_soucent_02',
    'a_f_y_soucent_03',
    'a_f_y_tennis_01',
    'a_f_y_tourist_01',
    'a_f_y_tourist_02',
    'a_f_y_vinewood_01',
    'a_f_y_vinewood_02',
    'a_f_y_vinewood_03',
    'a_f_y_vinewood_04',
    'a_f_y_yoga_01',
    'g_f_y_ballas_01',
    'g_f_y_families_01',
    'g_f_y_lost_01',
    'g_f_y_vagos_01',
    'mp_f_deadhooker',
    'mp_f_misty_01',
    'mp_f_stripperlite',
    's_f_m_fembarber',
    's_f_m_maid_01',
    's_f_m_shop_high',
    's_f_m_sweatshop_01',
    's_f_y_airhostess_01',
    's_f_y_bartender_01',
    's_f_y_baywatch_01',
    's_f_y_cop_01',
    's_f_y_factory_01',
    's_f_y_hooker_01',
    's_f_y_hooker_02',
    's_f_y_hooker_03',
    's_f_y_migrant_01',
    's_f_y_movprem_01',
    'ig_kerrymcintosh',
    'ig_janet',
    'ig_jewelass',
    'ig_magenta',
    'ig_marnie',
    'ig_patricia',
    'ig_screen_writer',
    'ig_tanisha',
    'ig_tonya',
    'ig_tracydisanto',
    'u_f_m_corpse_01',
    'u_f_m_miranda',
    'u_f_m_promourn_01',
    'u_f_o_moviestar',
    'u_f_o_prolhost_01',
    'u_f_y_bikerchic',
    'u_f_y_comjane',
    'u_f_y_corpse_01',
    'u_f_y_corpse_02',
    'u_f_y_hotposh_01',
    'u_f_y_jewelass_01',
    'u_f_y_mistress',
    'u_f_y_poppymich',
    'u_f_y_princess',
    'u_f_y_spyactress',
    'ig_amandatownley',
    'ig_ashley',
    'ig_maude',
    'ig_michelle',
    'ig_mrs_thornhill',
    'ig_natalia',
    's_f_y_scrubs_01',
    's_f_y_sheriff_01',
    's_f_y_shop_low',
    's_f_y_shop_mid',
    's_f_y_stripperlite',
    's_f_y_stripper_01',
    's_f_y_stripper_02',
    'ig_mrsphillips',
    'ig_molly',
    's_f_y_sweatshop_01',
    'ig_paige',
    'a_f_y_femaleagent',
    'a_f_y_hippie_01',

}

--101 grills
--429 male

frm_skins = {
    'mp_m_freemode_01',
    'player_one',
    'player_two',
    'player_zero',
    'ig_brad',
    'u_m_y_proldriver_01',
    'hc_driver',
    'hc_gunman',
    'hc_hacker',
    'ig_bankman',
    'ig_barry',
    'ig_bestmen',
    'ig_beverly',
    'ig_avonB',
    
    -- 'ig_car3guy2',
        -- NP CUSTOM PEDS
        'a_m_m_bigd',
        'davidwonders',
        'dragon',
        'ig_avonB',
        'ig_bogg',
        'ig_cesar',
        'ig_cornwood',
        'ig_eddieD',
        'ig_garrett',
        'ig_jacket',
        'ig_ken',
        'ig_leslie',
        'ig_milton',
        'ig_rudi',
        'ig_taochen',
        'k_fatrandy',
        'k_judd',
        'k_peanut',
        'ig_siz',
        's_m_y_bovice',
        's_m_m_jacob',
       

        'ig_nino',
        'a_m_o_eugene',
        'Mr_kebun',
        'a_m_m_mel',
        'koil',
        'a_m_o_bill',
        'ig_huck',
        'walter',
        'p_e_d_ott',
        'ig_speedy',
        's_m_m_snow',
        'a_m_m_taco_kid',
        's_m_y_happy',
        'g_m_m_buddha',
        'ig_buddha',
        'a_m_y_stbla_m',
        'a_m_y_erf',
        'a_m_m_ktown_m',
        'ig_terry_m',
        'a_m_y_skater_m',
        'francis_j_francer',
        'g_m_y_famfor_01_m',
        'ig_trafficwarden_m',
        'shaggy',
        'a_m_m_taco',
        'ig_mike',
        'ig_holden',
        'ig_sayeed_w',
        'ig_tony',
        'ig_shevy',
        'u_m_y_coop',
        'bobby_brown',
        'ramee',
        'ig_jay_norris',
        'ig_omega',
        's_m_y_joker',


        ------------------

        -- CAYO ISLAND
        'a_m_o_beach_02',
        'a_m_y_beach_04',
        'a_m_y_clubcust_04',
        'csb_ary',
        'csb_englishdave_02',
        'csb_gustavo',
        'csb_helmsmanpavel',
        'csb_isldj_00',
        'csb_isldj_01',
        'csb_iSLdj_02',
        'csb_isldj_03',
        'csb_isldj_04',
        'csb_jio',
        'csb_juanstrickler',
        'csb_miguelmadrazo',
        'csb_mjo',
        'csb_sss',
        'g_m_m_cartelguards_01',
        'g_m_m_cartelguards_02',
        'ig_pilot',
        's_m_m_highsec_04',
        's_m_m_fieldworker_01',
        's_m_m_drugprocess_01',
        's_m_m_bouncer_02',
        'ig_oldrichguy',
        'IG_Huang',
        'IG_Vincent_2',
        'S_M_M_HighSec_03',
        'IG_Celeb_01',
        'S_M_Y_WestSec_02',

        ------------------

        -- TUNER
        'A_M_Y_CarClub_01',
        'A_M_Y_TattooCust_01',
        'CSB_AviSchwartzman_02',
        'CSB_DrugDealer',
        'CSB_Moodyman_02',
        'G_M_M_Prisoners_01',
        'G_M_M_Slasher_01',
        'IG_Benny_02',
        'IG_LilDee',
        'S_M_M_Autoshop_03',
        'S_M_M_RaceOrg_01',
        'S_M_M_Tattoo_01',
        ------------------

    'ig_dw',
    'a_m_y_breakdance_01',
    'ig_tonyprince',
    'ig_casey',
    'mp_s_m_armoured_01',
    'ig_chef',
    'ig_chengsr',
    'ig_clay',
    'ig_cletus',
    'ig_dale',
    'ig_davenorton',
    'ig_devin',
    'ig_dom',
    'ig_dreyfuss',
    'ig_drfriedlander',
    'ig_fabien',
    'ig_fbisuit_01',
    'u_m_m_fibarchitect',
    'ig_floyd',
    'ig_groom',
    'ig_hao',
    'ig_hunter',
    'csb_prolsec',
    'ig_jimmyboston',
    'ig_jimmydisanto',
    'ig_joeminuteman',
    'ig_johnnyklebitz',
    'ig_josef',
    'ig_josh',
    'ig_lamardavis',
    'ig_lestercrest',
    'ig_lifeinvad_01',
    'ig_lifeinvad_02',
    'ig_manuel',
    'ig_mrk',
    'ig_nervousron',
    'ig_nigel',
    'ig_old_man1a',
    'ig_old_man2',
    'ig_oneil',
    'ig_orleans',
    'ig_ortega',
    'ig_paper',
    'ig_priest',
    'ig_prolsec_02',
    'ig_ramp_gang',
    'ig_ramp_hic',
    'ig_ramp_hipster',
    'ig_ramp_mex',
    'ig_roccopelosi',
    'ig_russiandrunk',
    'ig_siemonyetarian',
    'ig_solomon',
    'ig_stevehains',
    'ig_andreas',
    'ig_stretch',
    'ig_talina',
    -- 'ig_taocheng',
    'ig_taostranslator',
    'ig_terry',
    'ig_tomepsilon',
    'ig_tylerdix',
    'ig_wade',
    'ig_zimbor',
    's_m_m_paramedic_01',
    -- 'a_m_m_beach_01',
    'a_m_m_beach_02',
    'a_m_m_bevhills_01',
    'a_m_m_bevhills_02',
    'a_m_m_business_01',
    'a_m_m_eastsa_01',
    'a_m_m_eastsa_02',
    'a_m_m_farmer_01',
    'a_m_m_fatlatin_01',
    -- 'a_m_m_genfat_01',
    'a_m_m_genfat_02',
    'a_m_m_hasjew_01',
    'a_m_m_hillbilly_01',
    'a_m_m_hillbilly_02',
    'a_m_m_indian_01',
    'a_m_m_malibu_01',
    'a_m_m_mexcntry_01',
    'a_m_m_mexlabor_01',
    'a_m_m_og_boss_01',
    'a_m_m_paparazzi_01',
    'a_m_m_polynesian_01',
    'a_m_m_prolhost_01',
    'a_m_m_rurmeth_01',
    'a_m_m_salton_01',
    'a_m_m_salton_02',
    'a_m_m_salton_03',
    'a_m_m_salton_04',
    'a_m_m_skater_01',
    'a_m_m_skidrow_01',
    'a_m_m_socenlat_01',
    'a_m_m_soucent_01',
    'a_m_m_soucent_02',
    'a_m_m_soucent_03',
    'a_m_m_soucent_04',
    'a_m_m_stlat_02',
    'ig_djblamrupert',
    'ig_djblamryans',
    'ig_sol',
    'ig_g',
    'ig_djdixmanager',
    'ig_djsolfotios',
    'ig_djsoljakob',
    'ig_djsolmanager',
    'ig_djsolmike',
    'ig_djsolrobt',
    'ig_djtalignazio',
    'ig_jimmyboston_02',
    'a_m_m_tennis_01',
    'a_m_m_tourist_01',
    'a_m_m_trampbeac_01',
    'a_m_m_tramp_01',
    'a_m_m_tranvest_01',
    'a_m_m_tranvest_02',
    'a_m_o_beach_01',
    'a_m_o_salton_01',
    'a_m_o_soucent_01',
    'a_m_o_soucent_03',
    'a_m_o_tramp_01',
    'a_m_y_beachvesp_01',
    'a_m_y_beachvesp_02',
    'a_m_y_beach_01',
    'a_m_y_beach_02',
    'a_m_y_beach_03',
    'a_m_y_bevhills_01',
    'a_m_y_bevhills_02',
    'a_m_y_busicas_01',
    'a_m_y_business_01',
    'a_m_y_business_02',
    'a_m_y_business_03',
    'a_m_y_cyclist_01',
    'a_m_y_dhill_01',
    'a_m_y_downtown_01',
    'a_m_y_eastsa_01',
    'a_m_y_eastsa_02',
    'a_m_y_epsilon_01',
    'a_m_y_epsilon_02',
    'a_m_y_gay_01',
    'a_m_y_gay_02',
    'a_m_y_genstreet_01',
    'a_m_y_genstreet_02',
    'a_m_y_golfer_01',
    'a_m_y_hasjew_01',
    'a_m_y_hiker_01',
    'a_m_y_hipster_01',
    'a_m_y_hipster_02',
    'a_m_y_hipster_03',
    'a_m_y_indian_01',
    'a_m_y_jetski_01',
    'a_m_y_juggalo_01',
    'a_m_y_ktown_01',
    'a_m_y_ktown_02',
    'a_m_y_latino_01',
    'a_m_y_methhead_01',
    'a_m_y_mexthug_01',
    'a_m_y_motox_01',
    'a_m_y_motox_02',
    'a_m_y_musclbeac_01',
    'a_m_y_musclbeac_02',
    'a_m_y_polynesian_01',
    'a_m_y_roadcyc_01',
    'a_m_y_runner_01',
    'a_m_y_runner_02',
    'a_m_y_salton_01',
    'a_m_y_skater_01',
    'a_m_y_skater_02',
    'a_m_y_soucent_01',
    'a_m_y_soucent_02',
    'A_M_Y_SouCent_03',
    'a_m_y_soucent_04',
    'a_m_y_stbla_01',
    'a_m_y_stlat_01',
    'a_m_y_stwhi_01',
    'a_m_y_stwhi_02',
    'a_m_y_sunbathe_01',
    'a_m_y_surfer_01',
    'a_m_y_vindouche_01',
    'a_m_y_vinewood_01',
    'a_m_y_vinewood_02',
    'a_m_y_vinewood_03',
    'a_m_y_vinewood_04',
    'a_m_y_yoga_01',
    'g_m_m_armboss_01',
    'g_m_m_armlieut_01',
    'g_m_m_chemwork_01',
    --'g_m_m_chiboss_01',
    'g_m_m_chicold_01',
    'g_m_m_chigoon_01',
    'g_m_m_chigoon_02',
    'g_m_m_korboss_01',
    'g_m_m_mexboss_01',
    'g_m_m_mexboss_02',
    'g_m_y_armgoon_02',
    'g_m_y_azteca_01',
    'g_m_y_ballaeast_01',
    'g_m_y_ballaorig_01',
    'g_m_y_ballasout_01',
    'ig_ballasog',
    'g_m_y_famca_01',
    'g_m_y_famdnf_01',
    'g_m_y_korean_01',
    'g_m_y_korean_02',
    'g_m_y_korlieut_01',
    'g_m_y_lost_01',
    'g_m_y_lost_02',
    'g_m_y_lost_03',
    'g_m_y_mexgang_01',
    'g_m_y_mexgoon_01',
    'g_m_y_mexgoon_02',
    'g_m_y_mexgoon_03',
    'g_m_y_pologoon_01',
    'g_m_y_pologoon_02',
    'g_m_y_salvaboss_01',
    'g_m_y_salvagoon_01',
    'g_m_y_salvagoon_02',
    'g_m_y_salvagoon_03',
    'g_m_y_strpunk_01',
    'g_m_y_strpunk_02',
    'mp_m_exarmy_01',
    'mp_m_shopkeep_01',
    's_m_m_ammucountry',
    's_m_m_autoshop_01',
    's_m_m_autoshop_02',
    's_m_m_bouncer_01',
    's_m_m_chemsec_01',
    's_m_m_cntrybar_01',
    's_m_m_dockwork_01',
    's_m_m_doctor_01',
    'mp_m_fibsec_01',
    's_m_m_fiboffice_01',
    's_m_m_fiboffice_02',
    's_m_m_snowcop_01',
    's_m_m_gaffer_01',
    's_m_m_gardener_01',
    's_m_m_gentransport',
    's_m_m_hairdress_01',
    's_m_m_highsec_01',
    's_m_m_highsec_02',
    's_m_m_janitor',
    's_m_m_lathandy_01',
    -- 's_m_m_lifeinvad_01',
    's_m_m_linecook',
    's_m_m_lsmetro_01',
    's_m_m_mariachi_01',
    's_m_m_marine_01',
    's_m_m_marine_02',
    's_m_m_migrant_01',
    's_m_m_movalien_01',
    's_m_m_movprem_01',
    's_m_m_movspace_01',
    's_m_m_pilot_01',
    's_m_m_pilot_02',
    's_m_m_postal_01',
    's_m_m_postal_02',
    's_m_m_scientist_01',
    's_m_m_security_01',
    's_m_m_strperf_01',
    's_m_m_strpreach_01',
    's_m_m_strvend_01',
    's_m_m_trucker_01',
    's_m_m_ups_01',
    's_m_m_ups_02',
    's_m_o_busker_01',
    's_m_y_airworker',
    's_m_y_ammucity_01',
    's_m_y_armymech_01',
    's_m_y_autopsy_01',
    's_m_y_barman_01',
    's_m_y_baywatch_01',
    's_m_y_blackops_01',
    's_m_y_blackops_02',
    's_m_y_busboy_01',
    's_m_y_chef_01',
    's_m_y_clown_01',
    's_m_y_construct_01',
    's_m_y_construct_02',
    's_m_y_cop_01',
    's_m_y_ranger_01',
    'S_M_Y_Dealer_01',
    's_m_y_devinsec_01',
    's_m_y_dockwork_01',
    's_m_y_doorman_01',
    's_m_y_dwservice_01',
    's_m_y_dwservice_02',
    's_m_y_factory_01',
    's_m_y_garbage',
    's_m_y_grip_01',
    's_m_y_marine_01',
    's_m_y_marine_02',
    's_m_y_marine_03',
    's_m_y_mime',
    's_m_y_pestcont_01',
    's_m_y_pilot_01',
    -- 's_m_y_prismuscl_01',
    's_m_y_robber_01',
    's_m_y_shop_mask',
    's_m_y_strvend_01',
    's_m_y_uscg_01',
    's_m_y_valet_01',
    's_m_y_waiter_01',
    's_m_y_winclean_01',
    's_m_y_xmech_01',
    's_m_y_xmech_02',
    'u_m_m_aldinapoli',
    'u_m_m_bankman',
    'u_m_m_bikehire_01',
    'u_m_m_filmdirector',
    'u_m_m_glenstank_01',
    'u_m_m_griff_01',
    'u_m_m_jesus_01',
    'u_m_m_jewelsec_01',
    'u_m_m_jewelthief',
    'u_m_m_markfost',
    'u_m_m_partytarget',
    'u_m_m_prolsec_01',
    'u_m_m_promourn_01',
    'u_m_m_rivalpap',
    'u_m_m_spyactor',
    'u_m_m_willyfist',
    'u_m_o_finguru_01',
    'u_m_o_tramp_01',
    'u_m_y_abner',
    'u_m_y_antonb',
    'u_m_y_babyd',
    'u_m_y_baygor',
    'u_m_y_burgerdrug_01',
    'u_m_y_cyclist_01',
    'u_m_y_fibmugger_01',
    'u_m_y_guido_01',
    'u_m_y_gunvend_01',
    'u_m_y_imporage',
    'u_m_y_mani',
    'u_m_y_militarybum',
    'u_m_y_paparazzi',
    'u_m_y_party_01',
    'u_m_y_pogo_01',
    's_m_y_prisoner_01',
    'u_m_y_prisoner_01',
    'csb_rashcosvki',
    'u_m_y_rsranger_01',
    'u_m_y_sbike',
    'u_m_y_staggrm_01',
    'u_m_y_tattoo_01',
    'u_m_y_zombie_01',
    'u_m_y_hippie_01',
    -- 'a_m_y_hippy_01',
    'ig_vagspeak',

    'ig_bm',
    'ig_erik',
    'ig_randy',
    'ig_razz',
    'ig_senor',
    'ig_shahar',
    'u_m_y_coop_casual',
    'u_m_y_coop_cop',
    'policePed',
    'ig_twogood',
    "Arsenio",
    "Blanco",
    "csb_ramp_gang",
    "hao",
    "ig_erik",
    "ig_gouf",
    "ig_hqrreh",
    "ig_oozi",
    "ig_secrets",
    "ig_senor",
    "ig_stix",
    "lilsmoke",
    "ig_flik",
    "Papag",
    "ig_flik",
    "if_fam",
    "ig_sxnor", 
    "francis_small_francer",
    "ig_anothersenor",
    "ig_lebox", 
}    