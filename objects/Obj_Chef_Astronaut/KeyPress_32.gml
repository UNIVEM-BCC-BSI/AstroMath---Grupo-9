

// Verifique se a tecla Espaço foi pressionada
if keyboard_check_pressed(vk_space) {
    // Verifique qual personagem está falando atualmente
    if sprite_index == Spr_Ethan_Astronaut {
        sprite_index = Spr_Chef_Astronaut;
    } else if sprite_index == Spr_Chef_Astronaut {
        sprite_index = Spr_Ethan_Astronaut;
    }
}
