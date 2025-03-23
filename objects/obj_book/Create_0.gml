is_open = false; // Começa fechado
if (!variable_global_exists("book_open")) {
    global.book_open = false; // Inicializa corretamente
}
image_index = 0; // Garante que o livro começa com a primeira subimagem (se houver mais de uma)
visible = true;  // Garante que o objeto está visível
depth = 1; // Livro será desenhado atrás

