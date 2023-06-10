draw_set_font(Font_Level);
var azul_claro = make_color_rgb(26, 187, 250);


var dist=50
var GUI_alt = display_get_gui_height();
var GUI_larg = display_get_gui_width();
var x1 = GUI_larg / 2;
var y1 = GUI_alt / 2;
//var y1 = y / 2 + 150;
var m_x = device_mouse_x_to_gui(0);
var m_y = device_mouse_y_to_gui(0);


draw_set_halign(fa_center);
draw_set_valign(fa_center);

draw_set_color(c_yellow);
for(var i=0;i<op_max;i++){
	var y2 = y1 +(dist * i);
	var string_w = string_width(options[i]);
	var string_h = string_height(options[i]);
	//draw_rectangle( x1 - string_w / 2, y2 - string_h / 2, x1 + string_w / 2, y2 + string_h / 2, false);
	if(point_in_rectangle(m_x, m_y, x1 - string_w / 2, y2 - string_h / 2, x1 + string_w / 2, y2 + string_h / 2)){
		draw_set_alpha(1);
		index = i;
		if (mouse_check_button_pressed(mb_left)){
			global.dificuldade = index
			room_goto(Tela_Action_Easy);
			show_debug_message("Dificuldade:" + string(global.dificuldade))
		}
	}else{
		draw_set_alpha(.5);		
	}
	draw_text(x1,y2, options[i]);
}


//draw_rectangle(x1 - 70, y1 + 310 ,x1 + 60, y1 + 285,false);
draw_set_color(c_white);
var voltar = "Voltar"
 
if(point_in_rectangle(m_x,m_y,x1 - string_width(voltar), y1 + 300 - string_height(voltar),x1 + string_width(voltar), y1 + 300 + string_height(voltar))){
	draw_set_alpha(1);
	if (mouse_check_button_pressed(mb_left)){
		room_goto(Tela_Menu);
	}
}else{
	draw_set_alpha(.4)
	}

draw_text(x1, y1 + 300, "Voltar");
	

draw_set_font(-1)
draw_set_color(-1)
draw_set_valign(-1)
draw_set_halign(-1)