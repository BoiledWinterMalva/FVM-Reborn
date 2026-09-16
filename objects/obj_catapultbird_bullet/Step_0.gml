if global.is_paused{
	exit
}

x += move_speed
y -= cvspeed
cvspeed -= cgravity
image_angle -= 5

if x > 2200 or y > 1200 or x < -200 or y < -200{
	instance_destroy()
}

if y >= thrower_y {
    // 击中地面，播放动画
    var inst = instance_create_depth(x,y,depth,obj_eggboilerpult_bullet_effect)
	inst.image_xscale = 1.2
	inst.image_yscale = 1.2
	inst.sprite_index = spr_catapultbird_bullet_effect;
	if shape == 1 {
		inst.sprite_index = spr_catapultbird_bullet_effect_1;
	} else if shape >= 2 {
		inst.sprite_index = spr_catapultbird_bullet_effect_2;
	}
    instance_destroy()
}

//if !atk_modified{
//	with obj_card_parent{
//		if plant_id == "fruit_tart"{
//			if grid_row == other.row && ((shape <= 1 && x >= other.x) || shape >= 2){
//				other.damage *= atk
//				other.atk_modified = true
//			}
//		}
//	}
//}