if !hit_enemy{
	if other.hp > 0 and row == other.grid_row  and can_hit(target_type,other.target_type){
		with(other){
			damage_amount = other.damage
			damage_type = other.damage_type
			event_user(0)
			if other.shape >= 1 && self.ice_timer < 600 {
				ice_timer = 600
			}
		}
		var inst = instance_create_depth(x,y,depth,obj_eggboilerpult_bullet_effect)
		inst.image_xscale = 1.2
		inst.image_yscale = 1.2
		inst.sprite_index = spr_catapultbird_bullet_effect;
		if shape == 1 {
			inst.sprite_index = spr_catapultbird_bullet_effect_1;
		} else if shape >= 2 {
			inst.sprite_index = spr_catapultbird_bullet_effect_2;
		}
		hit_enemy = true
		hitted_enemy = other.id
		instance_destroy()
	}
}