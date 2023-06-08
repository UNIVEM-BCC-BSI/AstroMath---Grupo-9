
// Defina a velocidade de aumento
speed = 0.005;

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
