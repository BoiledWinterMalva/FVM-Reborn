if global.is_paused{
	image_speed = 0
	exit
}

image_speed = 1

if bullet_hit {
	var inst = instance_create_depth(x+50, y, depth+1, obj_sillybird_bullet_effect)
	inst.sprite_index = spr_bobobird_bullet_special_effect;
	bullet_hit = false;
}

x += move_speed

if x > 2200 or y > 1200 or x < 0 or y < 0{
	instance_destroy()
}