// Evento Draw do obj_book_interface

// Desenha o fundo preto semi-transparente
draw_set_alpha(0.7); // Define transparência
draw_set_color(c_black); // Define a cor preta
draw_rectangle(0, 0, room_width, room_height, false); // Desenha o fundo
draw_set_alpha(1); // Reseta transparência para normal

// Desenha a página do livro no centro da tela
draw_sprite(spr_book_pages, current_page, room_width / 2, room_height / 2);
