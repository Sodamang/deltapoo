increase = 0
scr_bullet_init()
grazepoints = 5
timepoints = 5
active = true
if (y < (__view_get(1, 0) + 20))
    y = (__view_get(1, 0) + 20)
if (y > (__view_get(1, 0) + 460))
    y = (__view_get(1, 0) + 460)
dont = 1
difficulty = 1
times = 0
activetimer = 0
image_alpha = 1
if (!instance_exists(obj_heart))
    instance_destroy()
type = 0
downcount = irandom_range(125, 250)
destroyonhit = false
wall_destroy = 1
spin = 0
bottomfade = 0