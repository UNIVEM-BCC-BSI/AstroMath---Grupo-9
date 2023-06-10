if(!instance_exists(alvo)){
	instance_destroy();
	exit
}
direction = point_direction(x, y, alvo.x, alvo.y)
image_angle = direction - 90;
speed = velocidade;
if(place_meeting(x,y,alvo)){
	instance_destroy();
	instance_destroy(alvo);
	Obj_Score_Cont.pontos++;
	}