/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Verifica se existe um asteroide ativo no jogo
var asteroid = instance_nearest(x, y, Obj_Meteors);
if instance_exists(asteroid)
{
    // Define a direção do tiro para seguir o asteroide
    direction = point_direction(x, y, asteroid.x, asteroid.y);
    
    // Define a velocidade do tiro
    speed = 8; // Ajuste a velocidade conforme necessário
}
else
{
    // Destrua o tiro se não houver mais um asteroide para seguir
    instance_destroy();
}
