draw_set_alpha(2)

var azul_claro = make_color_rgb(63, 205, 255);
var azul_35 = make_color_rgb(0, 131, 179);
var amarelo_45 = make_color_rgb(230, 184, 0);
var verde_25 = make_color_rgb(0, 128, 0);

// Operação
draw_set_font(Font_Operation);
draw_set_halign(fa_center);
draw_set_color(amarelo_45);


draw_text(x, y, pergunta);

draw_set_halign(-1);
draw_set_font(-1);
draw_set_color(-1);


// Respostas
draw_set_font(Font_Calculo);
draw_set_halign(fa_center);

draw_text(x, y + 80, string(respostas[0]));
draw_text(x, y + 140, string(respostas[1]));
draw_text(x, y + 200, string(respostas[2]));

draw_set_halign(-1);
draw_set_font(-1);

