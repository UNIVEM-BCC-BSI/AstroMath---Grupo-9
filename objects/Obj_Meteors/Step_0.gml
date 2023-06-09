if(!instance_exists(Obj_Player)){
	exit
}

// Defina a velocidade de aumento
speed = vel_meteors;

direction = point_direction(x, y, Obj_Player.x, Obj_Player.y);
tamanho_inicial += aumento_tamanho;
image_xscale = tamanho_inicial;
image_yscale = image_xscale;

if(place_meeting(x, y, Obj_Collision)){
	instance_destroy();
}

//// Defina o tamanho máximo do objeto
//tamanhoMaximo = 3.5;

//// Verifique se o tamanho atual do objeto é menor que o tamanho máximo
//if (image_xscale < tamanhoMaximo) {
//    // Aumente gradualmente o tamanho do objeto
//    image_xscale += speed;
//    image_yscale += speed;
//}
//else{
//	if (place_meeting(x, y, Obj_Collision)){
//		while(!place_meeting(x,y, Obj_Collision)){
//			y = y + sign(y)
//		}
//		instance_destroy();
//	}
//}
