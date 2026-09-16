// 用户事件1 - 发射子弹
var inst = instance_create_depth(x+10, y-95, depth-500, obj_bobobird_bullet)
if shape == 1 {
	inst.sprite_index = spr_bobobird_bullet_1
} else if shape >= 2 {
	inst.sprite_index = spr_bobobird_bullet_2
}

queue_sfx(snd_throw);

// 基本属性
inst.damage = atk
inst.row = grid_row
inst.thrower_y = y // 记录投手的Y坐标用于地面破裂判断

var _max = range

// 如果有目标敌人，计算预测落点
if (target_instance != noone && instance_exists(target_instance)) {

    // 敌人所在格
    var target_col = target_instance.grid_col

    // 最大射程（右9格）
    var max_col = grid_col + _max

    // 核心：限制目标格子
    var final_col = min(target_col, max_col)

    // 转换为世界坐标（格子中心）
    var grid_pos = get_world_position_from_grid(final_col, grid_row)
    var target_x = grid_pos.x
    var target_y = grid_pos.y

    // ===== 抛物线计算 =====
    var distance_x = target_x - inst.x
    var flight_time = clamp(30 + (distance_x/1000) * 45, 30, 75)

    var total_distance_x = distance_x
    var total_distance_y = 600   // 保持你的视觉高度

    inst.move_speed = total_distance_x / flight_time
    inst.cgravity = (2 * total_distance_y) / (flight_time * flight_time)
    inst.cvspeed = total_distance_y / flight_time

    // 储“格子目标”（重点）
    inst.target_col = final_col
    inst.target_x = target_x
    inst.target_y = target_y

    inst.has_target = true

} else {
    var final_col = min(grid_col + _max, 9 )

    var grid_pos = get_world_position_from_grid(final_col, grid_row)
    var target_x = grid_pos.x
    var target_y = grid_pos.y

    var distance_x = target_x - inst.x
    var flight_time = clamp(30 + (distance_x/1000) * 45, 30, 75)

    var total_distance_x = distance_x
    var total_distance_y = 600

    inst.move_speed = total_distance_x / flight_time
    inst.cgravity = (2 * total_distance_y) / (flight_time * flight_time)
    inst.cvspeed = total_distance_y / flight_time

    inst.target_col = final_col
    inst.target_x = target_x
    inst.target_y = target_y

    inst.has_target = true
}

// 子弹状态初始化
inst.hit_enemy = false;
inst.shape = shape;