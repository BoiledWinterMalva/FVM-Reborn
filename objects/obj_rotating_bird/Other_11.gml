with (obj_enemy_parent) {
		
	if (hp > 0 
	&& abs(other.x - self.x) <= other._range
	&& abs(other.grid_row - self.grid_row) <= 2
	&& can_hit(other.target_type,target_type)) {
		        
		hp -= other.atk;
		event_user(0)
		//audio_play_sound(snd_hit1,0,0)
		queue_sfx(snd_hit1)
	}
		
}