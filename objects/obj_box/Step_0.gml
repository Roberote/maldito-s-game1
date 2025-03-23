// Evento Step do obj_box

// Verifica se o jogador está perto da caixa e pressionou "E"
var player = instance_nearest(x, y, obj_character);
var distance = point_distance(x, y, player.x, player.y);

if (distance < 50 && keyboard_check_pressed(ord("E"))) {
    if (has_key) {
        // O jogador encontra a chave
        global.has_key = true; // Adiciona a chave ao inventário global
        show_message("Você encontrou uma chave!");
        has_key = false; // A chave é removida da caixa
    } else {
        show_message("A caixa está vazia.");
    }
}
