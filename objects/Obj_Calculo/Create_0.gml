resultado = 0;
randomize() 
function gerar_resultado(){

	var operador = "+";
	var numero1 = irandom_range(1, 10);
	var numero2 = irandom_range(1, 10);


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
	var index = irandom_range(0,2);
	
	for(var i = 0; i < 3; i++){
		if (i == index){
			respostas[i] = resultado;
		}else{
			
			var resposta_Errada = irandom_range(1,20);
			var confirmar = true;
			
			for (var j = 0; j < i; j++){
				if(respostas[j] == resposta_Errada){
					confirmar = false;
				}
			}
			respostas[i] = (confirmar) ? resposta_Errada : irandom_range(1,20); // Operador ternário ( If e Else em uma linha)
		}
	}
}

function reset_array(){
	gerar_resultado()
}
gerar_resultado()