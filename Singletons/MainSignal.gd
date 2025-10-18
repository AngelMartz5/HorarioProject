extends Node

signal SizeChange(NewSize : Vector2)
func _ready():
	get_tree().get_root().size_changed.connect(_on_screen_size_changed)
	
	# Llamamos a la función una vez al inicio para saber el estado inicial.
	_on_screen_size_changed()


# Esta es la función que se ejecutará cada vez que la señal "size_changed" sea emitida.
func _on_screen_size_changed():
	# Obtenemos el nuevo tamaño de la pantalla.
	var screen_size = get_viewport().size
	SizeChange.emit(screen_size)
