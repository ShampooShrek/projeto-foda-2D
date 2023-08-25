
hspd = 0
vspd = 0
weapon_gravity = 0.20

keep = true
shoot = false
delay_shoot = 0

function fire() {
	if(shoot && ammo > 0 && keep = false) { 
		delay_shoot--
		if(delay_shoot <= 0) {
			ammo--;
			var _x = lengthdir_x(sprite_width, image_angle)
			var _y = lengthdir_y(sprite_width, image_angle)
			
			delay_shoot = await_fire * 60
			var _bullet = instance_create_layer(x + _x, y + _y, layer, bullet)
			_bullet.damage = bullet_damage
			_bullet.speed = velocity
			_bullet.direction = image_angle
		}
	}
}