event_inherited(); 

plant_id = "bangbang_bird"; 

event_user(0)

if shape == 0{
	sprite_index = spr_bangbang_bird
}
else if shape == 1{
	sprite_index = spr_bangbang_bird_1
}
else if shape == 2{
	sprite_index = spr_bangbang_bird_2
}

// ========== 特定属性默认值 ==========

attack_anim = 13;
idle_anim = 13
flash_speed = 5
plant_type = "normal"
is_slowdown = false

cooldown_timer = cycle
attacking = false
