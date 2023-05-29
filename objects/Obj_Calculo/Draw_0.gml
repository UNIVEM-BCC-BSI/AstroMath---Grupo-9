draw_set_font(Font_Calculo); // Define a fonte que será usada para exibir o cálculo
draw_set_halign(fa_center); // Centraliza horizontalmente o texto
draw_set_color(c_red);
draw_text(x, y - 16, string(num1) + " " + operacao + " " + string(num2) + " = ?");
draw_text(x, y + 16, resposta); // Exibe a resposta digitada pelo jogador
