if instance_exists(obj_heart)
	y = (obj_heart.y - randomheartrange)

if !instance_exists(obj_heart)
instance_destroy()

if countdown > 0
	countdown -= 1

if countdown <= 0
	{
	with instance_create(x, y, obj_dicebul)
			dir = instance_nearest(x, y, obj_thing).setdir
				countdown = 25
	}