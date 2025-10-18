extends ColorRect

@onready var camera = %Camera

func _ready():
	MainSignal.SizeChange.connect(_sizeChanged)
	
	var screen_size = get_viewport().size
	MainSignal.SizeChange.emit(screen_size)


# Esta es la función que se ejecutará cada vez que la señal "size_changed" sea emitida.
func _sizeChanged(NewSize : Vector2):
	self.position.x = camera.position.x - NewSize.x/2 + 10
	self.position.y = camera.position.y - NewSize.y/2 + 10
	self.size.x = NewSize.x-17
	self.size.y = NewSize.y-17
	# Imprimimos un mensaje en la consola con las nuevas dimensiones.
	print("¡El tamaño de la pantalla ha cambiado! Nuevo tamaño: ", NewSize)
	
	# Ahora, determinamos la orientación comparando el ancho (x) y el alto (y).
	#if NewSize.x > NewSize.y:
	#	print("La orientación actual es: Horizontal (Landscape)")
	#elif NewSize.y > NewSize.x:
	#	print("La orientación actual es: Vertical (Portrait)")
	#else:
	#	print("La orientación actual es: Cuadrada")
