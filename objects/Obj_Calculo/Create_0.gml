var operador = "+";
var numero1 = irandom_range(1, 10);
var numero2 = irandom_range(1, 10);
var resultado;

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

respostas = array_create(3);
var respostaErrada1 = irandom_range(1, 20); // Valor aleatório errado
var respostaErrada2 = irandom_range(1, 20); // Valor aleatório errado

// Verifica se as respostas erradas são iguais ao resultado correto
while (respostaErrada1 == resultado) {
    respostaErrada1 = irandom_range(1, 20);
}

while (respostaErrada2 == resultado || respostaErrada2 == respostaErrada1) {
    respostaErrada2 = irandom_range(1, 20);
}

respostas[0] = respostaErrada1;
respostas[1] = respostaErrada2;
respostas[2] = resultado;

array_shuffle(respostas);
