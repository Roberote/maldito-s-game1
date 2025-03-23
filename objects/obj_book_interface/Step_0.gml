// Evento Step do obj_book_interface

// Virar para frente (clicando no lado direito)
if (mouse_check_button_pressed(mb_left) && mouse_x > room_width / 2 + 50) {
    if (current_page < total_pages) {
        current_page += 1;
        audio_play_sound(snd_turnpage, 0, false); // Toca o som ao virar a página
    }
}

// Virar para trás (clicando no lado esquerdo)
if (mouse_check_button_pressed(mb_left) && mouse_x < room_width / 2 - 50) {
    if (current_page > 0) {
        current_page -= 1;
        audio_play_sound(snd_turnpage, 0, false); // Toca o som ao virar a página
    }
}

// Fechar o livro com ESC
if (keyboard_check_pressed(vk_escape)) {
    instance_destroy(); // Fecha o livro
    global.book_open = false; // Volta o jogo ao normal
}
