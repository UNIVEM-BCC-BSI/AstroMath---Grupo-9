draw_set_font(Font_Menu);


var dist=50
var GUI_larg = display_get_gui_width();
var GUI_alt = display_get_height();
var x1 = GUI_larg / 2;
var y1 = GUI_alt / 2;
var m_x = device_mouse_x_to_gui(0);
var m_y = device_mouse_y_to_gui(0);


draw_set_halign(fa_center);
draw_set_valign(fa_center);

for(var i=0;i<op_max;i++){
	var y2 = y1 +(dist * i);
	var string_w = string_width(options[i]);
	var string_h = string_height(options[i]);
	
	if(point_in_rectangle(m_x, m_y, x1 - string_w / 2, y2 - string_h / 2, x1 + string_w / 2, y2 + string_h / 2)){
		draw_set_color(c_yellow);
		index = i;
		if (mouse_check_button_pressed(mb_left)){
			// Sair
			if(index == 3){
				game_end();
			}
			// Novo Jogo
			if (index == 0){
				room_goto_next()
			}
			// Recordes
			if (index == 1){
				room_goto(2);
			}
			// Configuração
			if (index == 2){
				room_goto(3);
			}
			
		}
	}else{
		draw_set_color(c_white);
	}
	
	draw_text(x1,y2, options[i]);
}


draw_set_font(-1)
draw_set_color(-1)
draw_set_valign(-1)