// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_draw_damage(_obj, _damage, _alarm) {
draw_self()
var _above_y = _obj.y - 32; // Define a posição vertical acima do objeto
var _text_color = c_red;   // Cor do texto (vermelho neste exemplo)
show_debug_message(_damage)
draw_text(50, 20, _damage);

// Crie um alarme para remover o texto após a duração definida

}