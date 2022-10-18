if timer > 0
	timer -= 0.2
	
if timer <= 0
	{
	timer = irandom_range(25, 150)
	instance_create(x + irandom_range(-200, 200), y + irandom_range(-50, 50), obj_floatything)
	}