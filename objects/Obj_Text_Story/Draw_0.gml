
draw_set_font(Font_Text_Story);

// Desenhando o text box
draw_sprite(Spr_TextBox, 0, x,y);


draw_set_color(c_yellow);

if(charcount < string_length(mytext[page])){
	charcount += 1;
}
textpart = string_copy(mytext[page], 1, charcount);

draw_text_ext(x+950,y+ybuffer, textpart, stringheight, boxwidth)

draw_set_font(Font_Score);
draw_set_color(c_white)

var press = "Precione ESPAÇO para prosseguir"
draw_text(room_width / 2,1000, press);
