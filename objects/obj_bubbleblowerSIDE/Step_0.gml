if on = true
{
	if timer <= 0
		{
			with instance_create(x + 25, y, obj_bubble)
				{
				image_xscale = 1.5
				image_yscale = 1.5
				dir = instance_nearest(x, y, obj_bubbleblowerSIDE).mydir
				}
		timer = 25
		}
	
	if timer > 0
	timer -= 0.5
	}
	
if (place_meeting(x, y, obj_mainchara) && on = true || place_meeting(x, y, obj_actor) && on = true)
	{
	snd_play(snd_noise)
	sprite_index = spr_bubbleblowerDEAD
	on = false
	}
	