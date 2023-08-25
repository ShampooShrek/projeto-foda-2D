#region Move
x += hspd
y += vspd

var 
	_right = keyboard_check(ord("D")),
	_left= keyboard_check(ord("A")),
	_top = keyboard_check(ord("W")),
	_bottom = keyboard_check(ord("S")),
	_moveh = _right - _left
	
hspd = _moveh * spd
vspd = vspd + player_gravity

if(hspd != 0) image_xscale = sign(hspd)

#endregion

scr_colision()

if(place_meeting(x, y + 1, obj_coli) && 
keyboard_check_pressed(vk_space)) {
	vspd -= 5
}

if(!place_meeting(x, y + 1, obj_coli) || vspd != 0) {
	sprite_index = spr_player_jump
}
else if(hspd != 0 && vspd == 0) {
	sprite_index = spr_player_walk
} else if(hspd == 0 && vspd == 0) {
	sprite_index = spr_player_idle
} 

if(keyboard_check_pressed(ord("1"))) {
	select_weapon(0)
} else if(keyboard_check_pressed(ord("2"))) {
	select_weapon(1)
} else if(keyboard_check_pressed(ord("3"))) {
	select_weapon(2)
} else if(keyboard_check_pressed(ord("4"))) {
	select_weapon(3)
}

#region functions

keep_weapon()
use_weapon()

#endregion





