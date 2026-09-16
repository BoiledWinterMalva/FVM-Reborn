if (
other.hp > 0 
and self.row == other.grid_row 
and ds_list_find_index(self.hitted_enemy, other.id) == -1
and can_hit(self.target_type, other.target_type)
){
	with(other){
		if self.hp <= other.damage {
			if (array_get_index(other.ignore_list,mouse_id) == -1)
			&& (array_get_index(other.target_ignore,mouse_id) == -1) {
	            var inst = instance_create_depth(x,y,depth,obj_knock_back_effect)
				inst.sprite_index = sprite_index
				inst.image_index = image_index
		        }
				instance_destroy();
		} else {
			queue_sfx(hit_sound)
			self.damage_amount = other.damage
			self.damage_type = other.damage_type
			event_user(0)
			ds_list_add(other.hitted_enemy,self.id)
			other.bullet_hit = true;
		}
	}
}