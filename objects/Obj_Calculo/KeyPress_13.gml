if (keyboard_check(vk_enter)) {
    if (string_length(resposta) > 0) {
        var respostaNumerica = real(resposta);
        
        switch (operacao) {
            case "+":
                resultado = num1 + num2;
                break;
            case "-":
                resultado = num1 - num2;
                break;
            case "*":
                resultado = num1 * num2;
                break;
            case "/":
                resultado = num1 / num2;
                break;
        }
        
        if (respostaNumerica == resultado) {
            show_message("Resposta correta!");
        } else {
            show_message("Resposta incorreta!");
        }
        
        resposta = "";
        num1 = irandom_range(1, 10);
        num2 = irandom_range(1, 10);
        operacao = choose("+", "-", "*", "/");
    }
} else if (keyboard_check_pressed(vk_backspace)) {
    if (string_length(resposta) > 0) {
        resposta = string_delete(resposta, string_length(resposta), 1);
    }
} else if (keyboard_lastchar >= "0" && keyboard_lastchar <= "9") {
    resposta += keyboard_lastchar;
}
