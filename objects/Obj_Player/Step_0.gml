// Variável para armazenar a opção selecionada
var opcaoSelecionada = -1;

// Verifica se o jogador clicou em uma das opções
if (mouse_check_button_pressed(mb_left)) {
    var mouseX = mouse_x;
    var mouseY = mouse_y;

    // Verifica se o clique ocorreu dentro da área de uma das opções
    for (var i = 0; i < array_length(Obj_Calculo.respostas); i++) {
        var opcaoX = Obj_Calculo.x - 50;
        var opcaoY = Obj_Calculo.y + i * 60 + 60; // Ajuste o espaçamento vertical conforme necessário

        // Verifica se o clique ocorreu dentro da área da opção
        if (point_in_rectangle(mouseX, mouseY,opcaoX, opcaoY + 15, opcaoX + 80, opcaoY + 70)) {
            opcaoSelecionada = i;
            break;
        }
    }
}

// Verifica se uma opção foi selecionada
// 1024x1056
// 1888x1056
if (opcaoSelecionada != -1) {
    // Verifica se a opção selecionada é a resposta correta
    if (Obj_Calculo.respostas[opcaoSelecionada] == Obj_Calculo.resultado) {
        pergunta = "";
		instance_create_layer(1024,1056,"Tiro", Obj_Tiro);
		instance_create_layer(1888,1056,"Tiro", Obj_Tiro);

		Obj_Calculo.reset_array()

    } else {
        // Resposta incorreta, faça o que for necessário
        show_message("Resposta incorreta!");
        // Fazer a tela tremer ou outras ações aqui
    }

    // Limpa a opção selecionada
    opcaoSelecionada = -1;
}
