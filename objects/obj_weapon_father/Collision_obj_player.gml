if(keep && keyboard_check_pressed(ord("E"))) {
	var _weapon_map = ds_map_create()
	_weapon_map[? "weapon"] = weapon
	_weapon_map[? "ammo"] = ammo
	_weapon_map[? "delay_shoot"] = delay_shoot
	array_push(other.inventory, _weapon_map)
	var _inventory_length = array_length(other.inventory)
	other.select_weapon(_inventory_length - 1)
	instance_destroy(id)
}
