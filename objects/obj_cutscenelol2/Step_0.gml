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
c_soundplay(snd_jump)
    c_sel(kr)
    c_jump_sprite(400, 0, 12, 17, spr_kris_fall_d_dw, spr_kris_dw_landed)
    c_delayfacing(16, "r")
    c_sel(su)
    c_delayfacing(16, "r")
    c_jump_sprite(400, 0, 12, 17, spr_susie_dw_fall_d, spr_susie_dw_landed)
    c_wait(20)
    c_soundplay(snd_impact)
    c_wait(16)
    c_soundplay(snd_swing)
    c_sel(kr)
    c_spin(2)
    c_sel(su)
    c_spin(2)
    c_wait(16)
    c_soundplay(snd_bell)
    c_sel(kr)
    c_sprite(spr_kris_pose)
    c_addxy(-2, -2)
    c_spin(0)
    c_sel(su)
    c_sprite(spr_susie_pose)
    c_addxy(2, 2)
    c_spin(0)
    c_wait(15)
    c_speaker("susie")
    c_msgsetloc(0, "\\E2* Yeah!/%", "obj_ch2_scene9_slash_Step_0_gml_778_0")
    c_talk_wait()
    c_sel(kr)
    c_addxy(2, 2)
    c_sel(su)
    c_addxy(-2, -2)
    c_pannable(false)
    c_actortokris()
    c_actortocaterpillar()
	c_terminatekillactors()

}
if (con == 2)
{
    if (!instance_exists(obj_cutscene_master))
    {
        con = 3
        global.interact = 0
    }
}
