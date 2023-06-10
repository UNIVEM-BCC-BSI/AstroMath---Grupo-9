
draw_set_font(Font_Text_Story);

// Desenhando o text box
draw_sprite(Spr_TextBox, 0, x,y);


draw_set_color(c_yellow);

if(charcount < string_length(mytext[page])){
	charcount += 1;
}
textpart = string_copy(mytext[page], 1, charcount);

draw_text_ext(x + 15,y + ybuffer + 10, textpart, stringheight + 10, boxwidth)

draw_set_font(Font_Press);
draw_set_color(c_white)
draw_set_alpha(.7)

var press = "Precione ESPAÇO para prosseguir"
draw_text(room_width / 2 - 100,1000, press);

draw_set_alpha(1)
