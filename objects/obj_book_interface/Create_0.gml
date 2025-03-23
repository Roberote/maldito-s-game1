// Evento Create do obj_book_interface
current_page = 0; // Começa na primeira página
total_pages = sprite_get_number(spr_book_pages) - 1; // Conta quantas páginas existem

// Verifica se a variável global já existe, se não, cria
if (!variable_global_exists("book_open")) {
    global.book_open = false; // Inicializa corretamente
}
