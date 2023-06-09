
if (mouse_check_button_pressed(mb_left)) {
    var respostaSelecionada = (mouse_y - y - 30) div 20; // Calcula a opção selecionada com base na posição vertical do mouse

    if (respostaSelecionada == respostaCorreta) {
        instance_destroy();
	}
}
