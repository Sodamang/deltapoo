if timer <= 0
	{
		with instance_create(x + 25, y, obj_bubble)
			{
			image_xscale = 1.5
			image_yscale = 1.5
			}
	timer = 25
	}
	
if timer > 0
timer -= 0.5