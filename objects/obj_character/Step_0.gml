depth = 0; // Personagem ficará na frente

// Movimentação com A e D (suave)
if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
    move_speed -= acceleration; // Acelera para a esquerda
    sprite_index = spr_walk_left; // Muda o sprite para "walk left" se mover para a esquerda
}

if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
    move_speed += acceleration; // Acelera para a direita
    sprite_index = spr_walk_right; // Muda o sprite para "walk right" se mover para a direita
}

// Limitar a velocidade máxima
move_speed = clamp(move_speed, -max_speed, max_speed);

// Aplicar fricção para parar suavemente (mais fricção)
if (!keyboard_check(vk_left) && !keyboard_check(vk_right) &&
    !keyboard_check(ord("A")) && !keyboard_check(ord("D"))) {
    move_speed *= 1 - (friction * 1.5);  // Aumentando a fricção para desacelerar mais rápido
}

// Mover o personagem
x += move_speed;

// Se o jogador apertar E perto do livro, abre ele
if (keyboard_check_pressed(ord("E")) && place_meeting(x, y, obj_book)) {
    if (!global.book_open) {
        instance_create_layer(room_width / 2, room_height / 2, "Background_UI", obj_book_interface);
        global.book_open = true; // Marca que o livro está aberto
    }
}
if (!variable_global_exists("book_open")) {
    global.book_open = false; // Inicializa corretamente
}
