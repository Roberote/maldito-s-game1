// Evento Step do obj_dialogue

// Avançar o diálogo com a tecla "E"
if (keyboard_check_pressed(ord("E"))) {
    is_talking = false; // Fecha o diálogo após pressionar "E"
    instance_destroy(); // Destroi o objeto de diálogo após terminar
}
