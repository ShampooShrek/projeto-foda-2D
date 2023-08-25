if(!hit) {
	life -= other.damage
	hit = true

	alarm[0] = 60 * 2

	enemy_damage_text = string(other.damage)
	instance_destroy(other)

	scr_draw_damage(self, enemy_damage_text, 0)
}
