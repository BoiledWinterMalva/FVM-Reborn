var _x = x;
var _range = 165;

with (obj_enemy_parent) {
	if (
		hp > 0 
		&& abs(_x - self.x) < _range 
		&& abs(self.grid_row - other.row) <= 1 
		&& can_hit(other.target_type, self.target_type)
	) {
		if self.hp <= other.damage {
			if (self.special_ash) {
                var inst = instance_create_depth(x, y - 20, depth, obj_mouse_ash_death);
                inst.special_ash = true;
                inst.sprite_index = sprite_index;
                inst.image_index = image_index;
            }
            else {
                instance_create_depth(x, y - 20, depth, obj_mouse_ash_death);
            }
            instance_destroy();
		} else {
		    // 对敌人造成范围伤害
		    self.damage_amount = other.damage
			self.damage_type = other.damage_type
			event_user(0)
		}
	}
}

queue_sfx(snd_bobo_bird)