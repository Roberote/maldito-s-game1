if (is_open) {
    draw_text(x, y - 50, "Livro Aberto!"); // Simula abrir o livro
} else {
    // Define a cor e a fonte do texto
    draw_set_color(c_white); // Cor do texto
    draw_set_font(fnt_handwritten); // Usa a fonte personalizada
    draw_set_halign(fa_center); // Centraliza o texto horizontalmente
    draw_set_valign(fa_middle); // Centraliza o texto verticalmente
    draw_text(x, y - 40, "Pressione [E] para abrir");
}

draw_self(); // Desenha o sprite normal do livro
