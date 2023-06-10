randomize();
// Declaração global da variável respostas
var respostas = [];

// Função para gerar a pergunta e respostas
function gerar_resultado() {
  var operadores = ["+", "-","*","/"];
  var operador = 0;
  var numero1 = irandom_range(1, 10);
  var numero2 = irandom_range(1, 10);
  
  switch (global.dificuldade){
	case 0:
		operador = operadores[irandom_range(0,1)]
		show_debug_message("Difuldade Fácil")
		break
	case 1:
		operador = operadores[irandom_range(0,2)]
		show_debug_message("Difuldade Médio")
		break

	case 2:
		operador = operadores[irandom_range(0,3)]
		show_debug_message("Difuldade Dificil")
		break
  }

  switch (operador) {
    case "+":
      resultado = numero1 + numero2;
      pergunta = string(numero1) + " + " + string(numero2) + " = ?";
      break;
    case "-":
      resultado = numero1 - numero2;
      pergunta = string(numero1) + " - " + string(numero2) + " = ?";
      break;
    case "*":
      resultado = numero1 * numero2;
      pergunta = string(numero1) + " * " + string(numero2) + " = ?";
      break;
    case "/":
      resultado = numero1 / numero2;
      pergunta = string(numero1) + " / " + string(numero2) + " = ?";
      break;
  }

  // Verificando respostas iguais
  var index = irandom_range(0, 2);

  for (var i = 0; i < 3; i++) {
    if (i == index) {
      respostas[i] = resultado;
    } else {
      var resposta_Errada = irandom_range(10, 20);
      var confirmar = true;

      for (var j = 0; j < i; j++) {
        if (respostas[j] == resposta_Errada) {
          confirmar = false;
          break;
        }
      }
      respostas[i] = (confirmar) ? resposta_Errada : irandom_range(1, 20);
    }
  }
}


function reset_array(){
	gerar_resultado()
}
gerar_resultado()