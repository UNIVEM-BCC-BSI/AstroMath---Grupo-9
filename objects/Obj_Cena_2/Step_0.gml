
/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(keyboard_check_pressed(vk_enter)){
	room_goto_next();
}
// Verifica se o gif chegou ao seu fim
if (image_index >= image_number - 1)
{
   // Carrega a próxima cena
   room_goto_next();
}
