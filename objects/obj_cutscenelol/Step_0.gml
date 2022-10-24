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
c_sel(su)
c_speaker("susie")
c_msgsetloc(0, "\\E1* Kris, we should probably try and find that weird sad onion guy./%", "obj_example_cutscene_slash_Step_0_gml_60_0")
c_talk_wait()
c_speaker("susie")
c_msgsetloc(0, "\\E0* Y'know, the one who got us here in the first place./%", "obj_example_cutscene_slash_Step_0_gml_60_0")
c_talk_wait()
c_speaker("susie")
c_msgsetloc(0, "\\E0* Don't know what his deal is, but whatever./%", "obj_example_cutscene_slash_Step_0_gml_60_0")
c_talk_wait()
c_speaker("susie")
c_msgsetloc(0, "\\E0* I'm sure we'll find him somewhere./%", "obj_example_cutscene_slash_Step_0_gml_60_0")
c_talk_wait()
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
