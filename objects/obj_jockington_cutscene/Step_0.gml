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
jo = 2
    jo_actor = instance_create(960, 425, obj_actor)
    scr_actor_setup(jo, jo_actor, "jockington")
	c_sel(jo)
	jo_actor.sprite_index = spr_jock_darkworld
	c_sel(jo)
	c_sprite(spr_jock_dead)

c_shake()
c_speaker("susie")
c_msgsetloc(0, "\\E0* Kris, what the hell was that?!/%", "obj_example_cutscene_slash_Step_0_gml_60_0")
c_talk_wait()
c_sel(su)
c_walk("r", 3, 100)
c_pannable(true)
c_pan_wait(425, 160, 80)
c_sel(jo)
c_speaker("jockington")
c_msgsetloc(0, "\\E4* Ugh..../%", "obj_example_cutscene_slash_Step_0_gml_60_0")
c_talk_wait()
c_speaker("susie")
c_msgsetloc(0, "\\E0* Jockington?!/%", "obj_example_cutscene_slash_Step_0_gml_60_0")
c_talk_wait()
c_sel(jo)
c_speaker("jockington")
c_msgsetloc(0, "\\E1* Kris, Susie, Third Person!/%", "obj_example_cutscene_slash_Step_0_gml_60_0")
c_talk_wait()
    c_actortokris()
    c_actortocaterpillar()
	c_terminatekillactors()
		/*scr_getchar(3)
    global.cinstance[1] = scr_makecaterpillar(540, 180, 3, 1)
			c_facing("r")
		*/
}
if (con == 2)
{
    if (!instance_exists(obj_cutscene_master))
    {
        con = 3
        global.interact = 0
    }
}
