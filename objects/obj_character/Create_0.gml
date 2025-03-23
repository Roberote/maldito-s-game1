// Variáveis de movimento
// Evento Create do obj_character

// Inicializa o inventário com a chave como false (não encontrada)
if (!variable_global_exists("has_key")) {
    global.has_key = false;
}
move_speed = 0; // Começa parado
max_speed = 4;  // Velocidade máxima
acceleration = 0.2; // Aceleração suave
friction = 0.1; // Para parar suavemente
