// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_colision() {
	if(place_meeting(x, y + vspd, obj_coli)) {
		if(!place_meeting(x, y + sign(vspd), obj_coli)) {
			y += sign(vspd)
		}
		vspd = 0
	}
	
	if(place_meeting(x + hspd, y, obj_coli)) {
		if(!place_meeting(x + sign(hspd), y, obj_coli)) {
			x += sign(hspd)
		}
		hspd = 0
	}
}