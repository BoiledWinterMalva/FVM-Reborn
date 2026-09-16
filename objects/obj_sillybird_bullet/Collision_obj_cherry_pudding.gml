if !bounced && row == other.grid_row{
	move_speed *= -1
	damage += other.atk
	image_xscale *= -1
	bounced = true
}