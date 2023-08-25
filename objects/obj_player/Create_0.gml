spd = 3
hspd = 0
vspd = 0

player_gravity = 0.20

inventory = []
weapon_index = -1
selected_weapon = noone
weapon_position = noone

function use_weapon() {
	if(selected_weapon != noone && instance_exists(selected_weapon)) {
		var _fire = mouse_check_button(mb_left)
		selected_weapon.shoot = _fire
		inventory[weapon_index][? "ammo"] = selected_weapon.ammo
		inventory[weapon_index][? "delay_shoot"] = selected_weapon.delay_shoot
		
		selected_weapon.x = weapon_position[? "_x"]
		selected_weapon.y = weapon_position[? "_y"]
		selected_weapon.image_angle = weapon_position[? "_dir"]
	}
}

function keep_weapon() {
	if(instance_exists(selected_weapon)) {
		var _keep = keyboard_check_released(ord("G"))
		if(_keep) {
			array_delete(inventory, weapon_index, weapon_index + 1)
			selected_weapon.keep = true
			selected_weapon.speed = 1
			selected_weapon.direction = selected_weapon.image_angle
			selected_weapon = noone

		}
	}
}

function select_weapon(_index) {
	if(_index <= array_length(inventory) - 1 && (_index != weapon_index || selected_weapon == noone)) {
		if(selected_weapon != noone) {
			instance_destroy(selected_weapon.id)
		}
		weapon = inventory[_index]
		weapon_index = _index
		selected_weapon = instance_create_layer(weapon_position[? "_x"], weapon_position[? "_y"], layer, weapon[? "weapon"])
		selected_weapon.ammo = weapon[? "ammo"]
		selected_weapon.delay_shoot = weapon[? "delay_shoot"]
		selected_weapon.image_angle = weapon_position[? "_dir"]
		selected_weapon.keep = false
	}
}

function calc_position() {
	var _dir = point_direction(x, y, mouse_x, mouse_y)
	var _x;
	if(image_xscale != -1) {
		_x = x + lengthdir_x(sprite_width, _dir)
	} else { 
		_x = x + lengthdir_x(-sprite_width, _dir)
	}
	var _y = y + lengthdir_y(sprite_height, _dir)
	
	response = ds_map_create()
	response[? "_x"] = _x
	response[? "_y"] = _y
	response[? "_dir"] = _dir
	
	return response
}



