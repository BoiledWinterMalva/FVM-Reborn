//获取本行第一格的坐标
var grid_pos = get_world_position_from_grid(-1, self.grid_row);
var _x = grid_pos.x;
var _y = grid_pos.y;

var inst = instance_create_depth(_x, _y-40, depth-500, obj_bobobird_bullet_special)
inst.damage = atk*((shape>=2)?4:3);
inst.row = grid_row;
inst.move_speed = 4;

queue_sfx(snd_bobo_bird_1)