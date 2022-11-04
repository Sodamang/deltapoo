if (con == 0 && obj_mainchara.x >= x && global.interact == 0)
{
    con = 1
    global.interact = 1
}
if (con == 1)
{
con = 2
cutscene_master = scr_cutscene_make()
scr_maincharacters_actors()
scr_cutscene_loaded()
c_speaker("no_name")
c_wait(120)
	c_msgsetloc(0, "* Kristmas!/", "obj_test2_cutscene_slash_Step_0_gml_30_0")
	c_msgnextloc("* I missed you, y'hear!/", "oT2CSST0GML_31")
	c_msgnextloc("* Y'hear... I think I solved the mystery.../", "oT2CSST0GML_31")
	c_msgnextloc("* The song I heard.../", "oT2CSST0GML_31")
	c_msgnextloc("* Comes from my house!/%", "oT2CSST0GML_31")
	c_talk_wait()
	
	c_speaker("no_name")
	c_var_instance(onion, "onionsetsprite", 1)
	c_msgsetloc(0, "* And if it's fine with you.../", "obj_test2_cutscene_slash_Step_0_gml_30_0")
	c_msgnextloc("* I need you and your friend's help, y'hear!/", "oT2CSST0GML_31")
	c_msgnextloc("* It's been so dark in one of the rooms.../", "oT2CSST0GML_31")
	c_msgnextloc("* Darker than usual.../%", "oT2CSST0GML_31")
	c_talk_wait()
	
	c_speaker("no_name")
	c_var_instance(onion, "onionsetsprite", 2)
	c_msgsetloc(0, "* And I know I didn't turn the light off!/%", "obj_test2_cutscene_slash_Step_0_gml_30_0")
	c_talk_wait()
	
	c_speaker("no_name")
	c_var_instance(onion, "onionsetsprite", 3)
	c_msgsetloc(0, "* So... whaddya say?/%", "obj_test2_cutscene_slash_Step_0_gml_30_0")
	c_talk_wait()
	
	c_speaker("susie")
	c_msgsetloc(0, "\\E0 * Yeah, sure, whatever./%", "obj_test2_cutscene_slash_Step_0_gml_30_0")
	c_talk_wait()
	
	c_speaker("susie")
	c_msgsetloc(0, "\\E2 * (Kris! This could be another dark world or something!)/%", "obj_test2_cutscene_slash_Step_0_gml_30_0")
	c_talk_wait()
	
	c_speaker("no_name")
	c_msgsetloc(0, "* Hop on!/%", "obj_test2_cutscene_slash_Step_0_gml_30_0")
	c_talk_wait()
	onion.on = 2
	
	c_sel(kr)
    c_wait(4)
    c_soundplay(snd_swing)
    c_jump_sprite(480, 98, 8, 8, spr_kris_fall_d_dw, spr_kris_dw_landed)
    c_delayfacing(16, "r")
    c_sel(su)
    c_delayfacing(16, "r")
    c_jump_sprite(480, 98, 8, 8, spr_susie_dw_fall_d, spr_susie_dw_landed)
	c_sel(kr)
	c_sprite(spr_nothing)
	c_sel(su)
	c_sprite(spr_nothing)
	c_wait(12)
	c_soundplay(snd_impact)
	c_var_instance(onion, "onionsetsprite", 4)
	c_speaker("susie")
    c_msgsetloc(0, "\\E2* Yeah!/%", "obj_ch2_scene9_slash_Step_0_gml_778_0")
    c_talk_wait()
}
if (con == 2)
{
    if (!instance_exists(obj_cutscene_master))
    {
        con = 3
        global.interact = 0
    }
}
if (con == 5)
instance_destroy()
