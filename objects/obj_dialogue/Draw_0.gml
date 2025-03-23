// Evento Draw do obj_dialogue

// Desenha uma caixa de diálogo (estilo Undertale)
draw_set_color(c_black);
draw_set_alpha(0.8);
draw_rectangle(50, room_height - 120, room_width - 50, room_height - 30, false); // Caixa de texto

// Desenha o texto do diálogo
draw_set_color(c_white);
draw_set_font(fnt_dialogue_text);
draw_text(60, room_height - 100, dialogue_text); // Texto do diálogo

// Desenha o nome do personagem (se necessário)
draw_set_font(fnt_dialogue_name);
draw_text(60, room_height - 130, "Personagem"); // Nome do personagem
