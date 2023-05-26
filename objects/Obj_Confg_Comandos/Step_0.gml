/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Verifica se o botão esquerdo do mouse foi pressionado
if (mouse_check_button_pressed(mb_left))
{
   // Verifica se o clique foi no lado direito da tela
   if (mouse_x > room_width / 2)
   {
      // Troca para a próxima tela
      room_goto(0);
   }
}
// Verifica se o botão esquerdo do mouse foi pressionado
if (mouse_check_button_pressed(mb_left))
{
   // Verifica se o clique foi no lado esquerdo da tela
   if (mouse_x < room_width / 2)
   {
      // Troca para a tela anterior
      room_goto_previous();
   }
}


if(keyboard_check(vk_right))
{
	room_goto(0);
}
if(keyboard_check(vk_left))
{
	room_goto(2);
}

if(keyboard_check(vk_escape)){
	game_end();
}