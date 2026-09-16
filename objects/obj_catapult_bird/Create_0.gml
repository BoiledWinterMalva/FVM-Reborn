event_inherited();  // 继承父对象属性
plant_id = "catapult_bird"; 
obj_type = object_index;
current_level = 1
event_user(0)
if shape == 0{
	sprite_index = spr_catapult_bird
}
else if shape == 1{
	sprite_index = spr_catapult_bird_1
}
else if shape == 2{
	sprite_index = spr_catapult_bird_2
}

// ========== 特定属性默认值 ==========

attack_anim = 13;
idle_anim = 13
flash_speed = 5
plant_type = "normal"
is_slowdown = false
target_type = "throw"

target_instance = noone
cooldown_timer = cycle
attacking = false
