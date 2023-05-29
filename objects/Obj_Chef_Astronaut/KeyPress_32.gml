
if keyboard_check_pressed(vk_space) {
    if global.spriteState == 0 {
        sprite_index = Spr_Ethan_Astronaut;
        global.spriteState = 1;
    } else {
        sprite_index = Spr_Chef_Astronaut;
        global.spriteState = 0;
    }
}
