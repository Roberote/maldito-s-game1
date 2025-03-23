// Evento Step da Porta (obj_porta)

var player = instance_nearest(x, y, obj_character);  // Encontrar o personagem mais próximo
var door_interact_x = x - sprite_width / 2;  // Ajuste a posição de interação para o lado esquerdo da porta (pode ser diferente se for do lado direito ou inferior)
var door_interact_y = y - sprite_height / 2;  // Ajuste vertical da posição

// Verifica a distância entre o jogador e a porta (interação baseada na borda da porta)
var distance = point_distance(door_interact_x, door_interact_y, player.x, player.y);

// Verifica se o jogador está perto o suficiente para interagir com a porta
if (distance < 50 && keyboard_check_pressed(ord("E"))) {
    // Verifique se a porta está trancada
    if (is_locked) {
        // Se a porta estiver trancada, inicia o diálogo
        instance_create_layer(room_width / 2, room_height / 2, "UI_Layer", obj_dialogue);
        obj_dialogue.dialogue_text = "A porta está trancada... talvez você precise de algo para abri-la.";
        obj_dialogue.is_talking = true;
    } else {
        // Se a porta não estiver trancada, abre a porta
        instance_create_layer(x, y, "Instances", obj_open_door); // Exemplo de abertura da porta
    }
}

// Detectar se o jogador está perto da porta sem pressionar "E" (para exibir texto de interação)
if (distance < 50) {
    // Desenha uma mensagem de interação como "Pressione E para interagir"
    draw_set_color(c_white);
    draw_set_font(fnt_dialogue_text);
    draw_text(x, y - 40, "[E] Interagir");
}
