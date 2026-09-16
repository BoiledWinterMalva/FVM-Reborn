event_inherited();  // 继承父对象属性
image_xscale = 1.6
image_yscale = 1.6
plant_id = "bobo_bird"; 
obj_type = object_index;
current_level = 1
event_user(0)
if shape == 0{
	sprite_index = spr_bobo_bird
}
else if shape == 1{
	sprite_index = spr_bobo_bird_1
}
else if shape == 2{
	sprite_index = spr_bobo_bird_2
}

// ========== 特定属性默认值 ==========

attack_anim = 15;
idle_anim = 11
flash_speed = 5
plant_type = "normal"
is_slowdown = false
target_type = "throw"

target_instance = noone
cooldown_timer = cycle
attacking = false

if shape == 0{
	special_bullet_count = 4
}
else if shape == 1{
	special_bullet_count = 3
}
else if shape == 2{
	special_bullet_count = 2
}
special_bullet_counter = special_bullet_count
