draw_set_font(Font_Calculo);

draw_text(x, y, pergunta);
draw_text(x + 50, y + 60, string(respostas[0]));
draw_text(x + 50, y + 120, string(respostas[1]));
draw_text(x + 50, y + 180, string(respostas[2]));

draw_set_font(-1);
