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
c_speaker("ralsei")
c_msgsetloc(0, "\\E0* I wonder if we can turn those bubble things off.../%", "obj_example_cutscene_slash_Step_0_gml_60_0")
c_talk_wait()
c_speaker("susie")
c_msgsetloc(0, "\\E0* Good point./%", "obj_example_cutscene_slash_Step_0_gml_60_0")
c_talk_wait()
c_speaker("susie")
c_msgsetloc(0, "\\E0* Kris, try touching it or something./%", "obj_example_cutscene_slash_Step_0_gml_60_0")
c_talk_wait()
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
