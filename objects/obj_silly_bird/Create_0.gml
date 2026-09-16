event_inherited();
plant_id = "silly_bird"; 
event_user(0)
if shape == 0{
	sprite_index = spr_silly_bird
}
else if shape == 1{
	sprite_index = spr_silly_bird_1
}
else if shape == 2{
	sprite_index = spr_silly_bird_2
}

// ========== 特定属性默认值 ==========

attack_anim = 11;
idle_anim = 12
flash_speed = 5
plant_type = "normal"
is_slowdown = false

b_count = 0

cooldown_timer = cycle
attacking = false