if(!instance_exists(alvo)){
	instance_destroy();
	exit
}
direction = point_direction(x, y, alvo.x, alvo.y)
speed = velocidade;
