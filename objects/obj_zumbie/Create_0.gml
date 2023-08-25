spd = 3
hspd = 0
vspd = 0
enemy_gravity = 0.20
hit = false
up_image_alpha = false

enemy_vision_distance = 50
enemy_target = noone
is_chasing = false

life = 8

function hit_anim() {
	if(hit) {
		if(up_image_alpha && image_alpha >= 1) { up_image_alpha = false }
		else if(!up_image_alpha && image_alpha <= 0) { up_image_alpha = true } 
		 
		if(!up_image_alpha) {
			image_alpha -= 0.1
		} else {
			image_alpha += 0.1
		}
	}
}