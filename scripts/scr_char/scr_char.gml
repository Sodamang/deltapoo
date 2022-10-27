function scr_getchar(char) {
    getchar = 0
    if (global.char[0] == 0)
    {
        global.char[0] = argument0
        getchar = 1
    }
    if (global.char[1] == 0 && getchar == 0)
    {
        global.char[1] = argument0
        getchar = 1
    }
    if (global.char[2] == 0 && getchar == 0)
    {
        global.char[2] = argument0
        getchar = 1
    }
    
		with (obj_darkcontroller)
	    {
	        chartotal = 0
	        havechar[0] = false
	        havechar[1] = false
	        havechar[2] = false 
	        havechar[3] = false
	        for (i = 0; i < 3; i += 1)
	        {
	            global.faceaction[i] = 0
	            if (global.char[i] != 0)
	                chartotal += 1
	            if (global.char[i] == 1)
	            {
	                havechar[0] = true
	                charpos[0] = i
	            }
	            if (global.char[i] == 2)
	            {
	                havechar[1] = true
	                charpos[1] = i
	            }
	            if (global.char[i] == 3)
	            {
	                havechar[2] = true
	                charpos[2] = i
	            }
	            if (global.char[i] == 4)
	            {
	                havechar[3] = true
	                charpos[3] = i
	            }
	        }
	    }

    return;
}

function scr_losechar() {
    global.char[2] = 0
    global.char[1] = 0
    with (obj_darkcontroller)
    {
        chartotal = 0
        havechar[0] = false
        havechar[1] = false
        havechar[2] = false
        havechar[3] = false
        for (i = 0; i < 3; i += 1)
        {
            global.faceaction[i] = 0
            if (global.char[i] != 0)
                chartotal += 1
            if (global.char[i] == 1)
            {
                havechar[0] = true
                charpos[0] = i
            }
            if (global.char[i] == 2)
            {
                havechar[1] = true
                charpos[1] = i
            }
            if (global.char[i] == 3)
            {
                havechar[2] = true
                charpos[2] = i
            }
            if (global.char[i] == 4)
            {
                havechar[3] = true
                charpos[3] = i
            }
        }
    }
    return;
}

function scr_set_facing_sprites(char) {
    _actorname = argument0
    name = argument0
    if is_string(_actorname)
    {
        if (_actorname == "kris")
        {
            name = "kris"
            if (global.darkzone == false)
                _actorname = "krislight"
            if (global.darkzone == true)
                _actorname = "krisdark"
        }
        if (_actorname == "susie")
        {
            name = "susie"
            if (global.darkzone == false)
            {
                _actorname = "susielight"
                if (global.chapter >= 2)
                    _actorname = "susielighteyes"
            }
            if (global.darkzone == true)
            {
                if (global.chapter == 1)
                    _actorname = "susiedark"
                if (global.chapter >= 2)
                    _actorname = "susiedarkeyes"
            }
        }
        if (_actorname == "ralsei")
        {
            name = "ralsei"
            if (global.chapter <= 1)
                _actorname = "ralseihat"
            if (global.chapter > 1)
                _actorname = "ralseinohat"
        }
        if (_actorname == "noelle")
        {
            name = "noelle"
            if (global.darkzone == false)
                _actorname = "noellelight"
            if (global.darkzone == true)
                _actorname = "noelledark"
        }
        if (_actorname == "berdly")
        {
            name = "berdly"
            if (global.darkzone == false)
                _actorname = "berdlylight"
            if (global.darkzone == true)
                _actorname = "berdlydark"
        }
        if (_actorname == "krislight")
        {
            usprite = spr_krisu
            rsprite = spr_krisr
            dsprite = spr_krisd
            lsprite = spr_krisl
        }
        if (_actorname == "krisdark")
        {
            usprite = spr_krisu_dark
            rsprite = spr_krisr_dark
            dsprite = spr_krisd_dark
            lsprite = spr_krisl_dark
        }
        if (_actorname == "susielight")
        {
            usprite = spr_susieu
            rsprite = spr_susier
            dsprite = spr_susied
            lsprite = spr_susiel
        }
        if (_actorname == "susielighteyes")
        {
            usprite = spr_susie_walk_up_lw
            rsprite = spr_susie_walk_right_lw
            dsprite = spr_susie_walk_down_lw
            lsprite = spr_susie_walk_left_lw
        }
        if (_actorname == "susiedark")
        {
            usprite = spr_susieu_dark
            rsprite = spr_susier_dark
            dsprite = spr_susied_dark
            lsprite = spr_susiel_dark
            specialsprite[4] = spr_susie_shock_r
            specialsprite[5] = spr_susie_shock
        }
        if (_actorname == "susiedarkeyes")
        {
            usprite = spr_susie_walk_up_dw
            rsprite = spr_susie_walk_right_dw
            dsprite = spr_susie_walk_down_dw
            lsprite = spr_susie_walk_left_dw
            specialsprite[4] = spr_susie_shock_r
            specialsprite[5] = spr_susie_shock
        }
        if (_actorname == "susieunhappy")
        {
            name = "susie"
            if (global.darkzone == true)
            {
                usprite = spr_susie_walk_up_dw
                rsprite = spr_susie_walk_right_dw_unhappy
                dsprite = spr_susie_walk_down_dw_unhappy
                lsprite = spr_susie_walk_left_dw_unhappy
            }
            else
            {
                usprite = spr_susie_walk_up_lw
                rsprite = spr_susie_walk_right_lw_unhappy
                dsprite = spr_susie_walk_down_lw_unhappy
                lsprite = spr_susie_walk_left_lw_unhappy
            }
            specialsprite[4] = spr_susie_shock_r
            specialsprite[5] = spr_susie_shock
        }
        if (_actorname == "noellelight")
        {
            usprite = spr_noelle_walk_up_lw
            rsprite = spr_noelle_walk_right_lw
            dsprite = spr_noelle_walk_down_lw
            lsprite = spr_noelle_walk_left_lw
        }
        if (_actorname == "noelledark")
        {
            usprite = spr_noelle_walk_up_dw
            lsprite = spr_noelle_walk_left_dw
            rsprite = spr_noelle_walk_right_dw
            dsprite = spr_noelle_walk_down_dw
        }
        if (_actorname == "berdlylight")
        {
            usprite = spr_berdly_walk_up_lw
            rsprite = spr_berdly_walk_right_lw
            dsprite = spr_berdly_walk_down_lw
            lsprite = spr_berdly_walk_left_lw
        }
        if (_actorname == "berdlydark")
        {
            usprite = spr_berdly_walk_up_dw
            lsprite = spr_berdly_walk_left_dw
            rsprite = spr_berdly_walk_right_dw
            dsprite = spr_berdly_walk_down_dw
        }
        if (_actorname == "berdlyunhappy")
        {
            usprite = spr_berdly_walk_up_dw
            lsprite = spr_berdly_walk_left_dw_unhappy
            rsprite = spr_berdly_walk_right_dw_unhappy
            dsprite = spr_berdly_walk_down_dw_unhappy
        }
        if (_actorname == "ralseihat")
        {
            name = "ralsei"
            usprite = spr_ralseiu
            rsprite = spr_ralseir
            dsprite = spr_ralseid
            lsprite = spr_ralseil
            specialsprite[5] = spr_ralsei_shock_overworld
        }
        if (_actorname == "ralseinohat")
        {
            name = "ralsei"
            usprite = spr_ralsei_walk_up
            rsprite = spr_ralsei_walk_right
            dsprite = spr_ralsei_walk_down
            lsprite = spr_ralsei_walk_left
        }
        if (_actorname == "ralseiunhappy")
        {
            name = "ralsei"
            usprite = spr_ralsei_walk_up
            rsprite = spr_ralsei_walk_right_unhappy
            dsprite = spr_ralsei_walk_down_unhappy
            lsprite = spr_ralsei_walk_left_unhappy
        }
        if (_actorname == "lancer")
        {
            name = "lancer"
            usprite = spr_lancer_ut
            rsprite = spr_lancer_rt
            dsprite = spr_lancer_dt
            lsprite = spr_lancer_lt
        }
        if (_actorname == "toriel")
        {
            name = "toriel"
            usprite = spr_toriel_u
            rsprite = spr_toriel_r
            dsprite = spr_toriel_d
            lsprite = spr_toriel_l
        }
        if (_actorname == "alphys")
        {
            name = "alphys"
            usprite = spr_alphysu
            rsprite = spr_alphysr
            dsprite = spr_alphysd
            lsprite = spr_alphysl
        }
        if (_actorname == "car")
        {
            usprite = spr_torcar_u
            dsprite = spr_torcar_d
            lsprite = spr_torcar_l
            rsprite = spr_torcar_r
        }
        if (_actorname == "queen")
        {
            name = "queen"
            usprite = spr_queen_walk_up
            dsprite = spr_queen_walk_down
            lsprite = spr_queen_walk_left
            rsprite = spr_queen_walk_right
        }
        if (_actorname == "queenchair")
        {
            name = "queen"
            usprite = spr_queen_chair_swish_wine
            dsprite = spr_queen_chair_swish_wine
            lsprite = spr_queen_chair_swish_wine
            rsprite = spr_queen_chair_swish_wine
            specialsprite[4] = spr_queen_chair_ohoho_2
            specialsprite[5] = spr_queen_chair_ohoho_1
        }
        if (_actorname == "asgore")
        {
            name = "asgore"
            usprite = spr_asgoreu
            dsprite = spr_asgored
            lsprite = spr_asgorel
            rsprite = spr_asgorer
        }
    if (_actorname == "jockington")
        {
            name = "jockington"
            usprite = spr_jock_walk_up
            dsprite = spr_jock_walk_down
            lsprite = spr_jock_walk_left
            rsprite = spr_jock_walk_right
        }
	}
    else
    {
        usprite = _actorname
        dsprite = _actorname
        rsprite = _actorname
        lsprite = _actorname
        sprite_index = _actorname
    }
    specialsprite[0] = dsprite
    specialsprite[1] = rsprite
    specialsprite[2] = usprite
    specialsprite[3] = lsprite
    dtsprite = dsprite
    rtsprite = rsprite
    utsprite = usprite
    ltsprite = lsprite
    return;
}



function scr_setmainchar(char) {
	
	
	switch char {
		
		case "susie": case "sus": case 1:
			global.mainchar = "susie"
			
			
			global.mc_dspr = spr_susie_walk_down_lw
			global.mc_rspr = spr_susie_walk_right_lw
			global.mc_lspr = spr_susie_walk_left_lw
			global.mc_uspr = spr_susie_walk_up_lw
			
			if global.darkzone { 
				global.mc_dspr = spr_susie_walk_down_dw
				global.mc_rspr = spr_susie_walk_right_dw
				global.mc_lspr = spr_susie_walk_left_dw
				global.mc_uspr = spr_susie_walk_up_dw
			}
			break
			
		case "ralsei": case "ral": case 2:
			global.mainchar = "ralsei"
			global.mc_dspr = spr_ralsei_walk_down
			global.mc_rspr = spr_ralsei_walk_right
			global.mc_lspr = spr_ralsei_walk_left
			global.mc_uspr = spr_ralsei_walk_up
			break
			
		case "noelle": case "noe": case 3:
			global.mainchar = "noelle"
			global.mc_dspr = spr_noelle_walk_down_lw
			global.mc_rspr = spr_noelle_walk_right_lw
			global.mc_lspr = spr_noelle_walk_left_lw
			global.mc_uspr = spr_noelle_walk_up_lw
			
			if global.darkzone { 
				global.mc_dspr = spr_noelle_walk_down_dw
				global.mc_rspr = spr_noelle_walk_right_dw
				global.mc_lspr = spr_noelle_walk_left_dw
				global.mc_uspr = spr_noelle_walk_up_dw
			}
			break
			
		case "lancer": case "lan": case 4:
			global.mainchar = "lancer"
			global.mc_dspr = spr_lancer_dt
			global.mc_rspr = spr_lancer_rt
			global.mc_lspr = spr_lancer_lt
			global.mc_uspr = spr_lancer_ut
			break
			
		case "berdly": case "ber": case 5:
			global.mainchar = "berdly"
			global.mc_dspr = spr_berdly_walk_down_lw
			global.mc_rspr = spr_berdly_walk_right_lw
			global.mc_lspr = spr_berdly_walk_left_lw
			global.mc_uspr = spr_berdly_walk_up_lw
			
			if global.darkzone { 
				global.mc_dspr = spr_berdly_walk_down_dw
				global.mc_rspr = spr_berdly_walk_right_dw
				global.mc_lspr = spr_berdly_walk_left_dw
				global.mc_uspr = spr_berdly_walk_up_dw
			}
			break
			
		case "starwalker": case "sta": case 6:
			global.mainchar = "starwalker"
			global.mc_dspr = spr_krisd
			global.mc_rspr = spr_krisr
			global.mc_lspr = spr_krisl
			global.mc_uspr = spr_krisu
			break
			
		case "queen": case "que": case 7:
			global.mainchar = "queen"
			global.mc_dspr = spr_krisd
			global.mc_rspr = spr_krisr
			global.mc_lspr = spr_krisl
			global.mc_uspr = spr_krisu
			break	
			
		
		default: 
			global.mainchar = "kris"
			global.mc_dspr = spr_krisd
			global.mc_rspr = spr_krisr
			global.mc_lspr = spr_krisl
			global.mc_uspr = spr_krisu
			
			if global.darkzone {
				global.mc_dspr = spr_krisd_dark
				global.mc_rspr = spr_krisr_dark
				global.mc_lspr = spr_krisl_dark
				global.mc_uspr = spr_krisu_dark
			}
			break
	case "jockington": case "joc": case 9:
			global.mainchar = "jockington"
			global.mc_dspr = spr_jock_walk_down
			global.mc_rspr = spr_jock_walk_right
			global.mc_lspr = spr_jock_walk_left
			global.mc_uspr = spr_jock_walk_up
			break	
	}
	
	with obj_mainchara {
		
		dsprite = global.mc_dspr
		rsprite = global.mc_rspr
		lsprite = global.mc_lspr
		usprite = global.mc_uspr
		
		if global.mainchar = "susie"
			y_off = -8
			
		else if global.mainchar = "noelle"
			y_off = -10
			
		else y_off = 0
		
		//y_off *= image_yscale
		
	}
	
	var char_string = global.mainchar
	
		scr_debug_print("mainchar = " + char_string)

	
	return;
}