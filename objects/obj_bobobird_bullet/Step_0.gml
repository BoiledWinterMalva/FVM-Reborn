if global.is_paused{
	exit
}

x += move_speed
y -= cvspeed
cvspeed -= cgravity
image_angle -= 5

// ===== 越界销毁 =====
if x > 2200 || y > 1200 || x < -200 || y < -200 {
    instance_destroy();
}

// ===== 命中“目标格子” =====
if has_target {
    // 到达目标点（允许一点误差）
    if abs(x - target_x) < 5 {
		// 对齐到格子中心
        x = target_x;
        y = target_y;
		var inst = instance_create_depth(target_x, target_y, depth, obj_bobobird_bullet_effect)
        instance_destroy();
    }
}