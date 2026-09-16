b_count++

if b_count <= 2 || (b_count == 3 && shape >= 2){
	var inst = instance_create_depth(x-40,y-65,depth-500,obj_sillybird_bullet)
	inst.damage = atk
	inst.move_speed = -8
	inst.row = grid_row
	inst.shape = shape
	if shape == 1 {
		inst.sprite_index = spr_sillybird_bullet_1
	} else if shape >= 2 {
		inst.sprite_index = spr_sillybird_bullet_2
	}
	inst.image_xscale = -1.6
}

var inst2 = instance_create_depth(x+40,y-65,depth-500,obj_sillybird_bullet)
inst2.damage = atk
inst2.move_speed = 8
inst2.row = grid_row
inst2.shape = shape
if shape == 1 {
	inst2.sprite_index = spr_sillybird_bullet_1
} else if shape >= 2 {
	inst2.sprite_index = spr_sillybird_bullet_2
}

queue_sfx(snd_shot);