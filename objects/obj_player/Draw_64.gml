if(selected_weapon != noone) {
	
	var _weapon_sprite = object_get_sprite(inventory[weapon_index][? "weapon"])
	var _ammo = selected_weapon.ammo
	var _x = display_get_gui_width() - 150
	var _y = 20;

	draw_sprite(_weapon_sprite, 0, _x, _y)
	draw_text(_x + sprite_get_width(_weapon_sprite) + 5, _y - sprite_get_height(_weapon_sprite) - 3, "Ammo: " + string(_ammo))

}
