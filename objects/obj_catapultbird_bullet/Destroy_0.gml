	var _x = x
	if instance_exists(hitted_enemy){
		_x = hitted_enemy.x;
	}
	var _range = (shape>=2)?225:165;
	var splash_ratio = 0.35
	if shape >= 1{
		splash_ratio = 0.65
	}

	with (obj_enemy_parent) {
	    if (
			hp > 0 
			&& abs(_x - x) < _range 
			&& abs(grid_row - other.row) <= 1 
			&& id != other.hitted_enemy 
			&& can_hit(other.target_type,target_type)
		) {
	        
	        // 对敌人造成溅射伤害
	        damage_amount = other.damage * splash_ratio
			damage_type = other.damage_type
			event_user(0)
	        if other.shape >= 1 && self.ice_timer < 600 {
				ice_timer = 600
			}
	    }
	}
	//audio_play_sound(snd_egg_bullet,0,0)
	queue_sfx(snd_egg_bullet)