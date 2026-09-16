event_inherited();
image_xscale = 1.6
image_yscale = 1.6
plant_id = "rotating_bird"; 
obj_type = object_index;
current_level = 1
event_user(0)
if shape == 0{
	sprite_index = spr_rotating_bird
}
else if shape == 1{
	sprite_index = spr_rotating_bird_1
}
else if shape == 2{
	sprite_index = spr_rotating_bird_2
}

// ========== 特定属性默认值 ==========

attack_anim = 14;
idle_anim = 9
flash_speed = 5
plant_type = "normal"
is_slowdown = false
target_type = "rotate"

cooldown_timer = cycle
attacking = false

_range = 310