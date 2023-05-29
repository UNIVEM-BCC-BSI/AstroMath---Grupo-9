/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (index < string_length(mytext[0])){
	index += vel_text;
}


if keyboard_check_pressed(vk_space) {
	page += 1
	charcount = 0;
}
if keyboard_check(vk_escape){
	game_end();
}
if keyboard_check(vk_enter){
	room_goto_next();
}

if page = 10 room_goto_next()