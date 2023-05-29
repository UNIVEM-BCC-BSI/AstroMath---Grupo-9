/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

/// Objeto Aumentar

// Defina a velocidade de aumento
speed = 0.003;

// Defina o tamanho máximo do objeto
tamanhoMaximo = 3.5;

// Verifique se o tamanho atual do objeto é menor que o tamanho máximo
if (image_xscale < tamanhoMaximo) {
    // Aumente gradualmente o tamanho do objeto
    image_xscale += speed;
    image_yscale += speed;
}
else{
	if (place_meeting(x, y, Obj_Collision)){
		while(!place_meeting(x,y, Obj_Collision)){
			y = y + sign(y)
		}
		instance_destroy();
	}
}
// Criando um meteoro a cada 3seg
tempo_corrido += delta_time
if tempo_corrido >= tempo_inicial{
	instance_create_depth(x, y, 0, Obj_Meteors);
}