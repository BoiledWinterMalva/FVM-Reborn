if global.is_paused{
	exit
}
event_inherited(); 
if is_frozen{
	exit
}
var current_flash_speed = flash_speed
if is_slowdown{
	current_flash_speed *= 2
}

//冷却计时器，没冷却完啥都不要干
if cooldown_timer > 0{
	cooldown_timer --;
	return;
}

if !attacking {
	// 检测范围内活着的敌人
	with (obj_enemy_parent) {
	    if (
		abs(other.x - self.x) <= other._range
		&& abs(other.grid_row - self.grid_row) <= 2
		&& can_target_on(other.target_type, target_type) 
		&& hp > 0
		) {
	        other.attacking = true;
	        break;
	    } 
	}
}

if attacking {
	state = CARD_STATE.ATTACK;
	attack_timer ++
	if attack_timer == (attack_anim - 13) * current_flash_speed {
		audio_play_sound(snd_coffee_pot_attack,0,0);// 播音效
	}
	if attack_timer == (attack_anim - 9) * current_flash_speed {
		event_user(1);// 发射子弹
	}
	if attack_timer == (attack_anim - 5) * current_flash_speed && shape >= 2 {
		event_user(1);// 发射子弹
	}
	if (attack_timer >= attack_anim * current_flash_speed || attack_timer >= cycle){
		attacking = false;
		cooldown_timer = cycle - attack_timer;
		attack_timer = 0;
		state = CARD_STATE.IDLE;
	}
}
