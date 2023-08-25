x += hspd
y += vspd

vspd = vspd + enemy_gravity

if(hspd != 0) image_xscale = sign(hspd)

if(hspd != 0) {
	sprite_index = spr_enemy_run
} else {
	sprite_index = spr_enemy_idle	
}

if(distance_to_object(obj_player) <= enemy_vision_distance) {
	is_chasing = true
} else {
	is_chasing = false
}


if(is_chasing) {
	var _dir_to_player = point_direction(x, y, obj_player.x, obj_player.y)
	motion_set(_dir_to_player, 2)
}

scr_colision()

hit_anim()