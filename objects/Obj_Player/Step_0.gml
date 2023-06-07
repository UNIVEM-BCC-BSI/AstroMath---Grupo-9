// Variável para armazenar a opção selecionada
var opcaoSelecionada = -1;

// Verifica se o jogador clicou em uma das opções
if (mouse_check_button_pressed(mb_left)) {
    var mouseX = mouse_x;
    var mouseY = mouse_y;

    // Verifica se o clique ocorreu dentro da área de uma das opções
    for (var i = 0; i < array_length_1d(respostas); i++) {
        var opcaoX = x;
        var opcaoY = y + i * 30 + 30; // Ajuste o espaçamento vertical conforme necessário

        // Verifica se o clique ocorreu dentro da área da opção
        if (point_in_rectangle(mouseX, mouseY, opcaoX, opcaoY, opcaoX + 100, opcaoY + 20)) {
            opcaoSelecionada = i;
            break;
        }
    }
}

// Verifica se uma opção foi selecionada
if (opcaoSelecionada != -1) {
    // Verifica se a opção selecionada é a resposta correta
    if (respostas[opcaoSelecionada] == resultado) {
        // Resposta correta, faça o que for necessário
        show_message("Resposta correta!");
        // Disparar o laser ou fazer outras ações aqui

        // Limpa a pergunta e respostas
        pergunta = "";
        array_clear(respostas);

        // Gera uma nova pergunta e respostas
        // ... Código para gerar uma nova pergunta ...

    } else {
        // Resposta incorreta, faça o que for necessário
        show_message("Resposta incorreta!");
        // Fazer a tela tremer ou outras ações aqui
    }

    // Limpa a opção selecionada
    opcaoSelecionada = -1;
}
