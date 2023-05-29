/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_set_font(Font_Text_Story);

// Desenhando o text box
draw_sprite(Spr_TextBox, 0, x,y);


draw_set_color(c_yellow);

if(charcount < string_length(mytext[page])){
	charcount += 1;
}
textpart = string_copy(mytext[page], 1, charcount);
draw_text_ext(x+xbuffer,y+ybuffer, textpart, stringheight, boxwidth)