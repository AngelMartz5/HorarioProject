extends Node
class_name AppScript
#Min is X values // Max is y value
@export var lims_x_y : bool = false
@export var min_maxHeight : Vector2 = Vector2.ZERO
@export var min_maxWeight : Vector2 = Vector2.ZERO

@export var appFather : Node
@export var expandApp := true
func _ready():
	if appFather != null:
		MainSignal.SizeChange.connect(_buttonSizeChanged)

func _buttonSizeChanged(NewSize : Vector2):
	if !expandApp:
		return
	if lims_x_y &&(min_maxHeight != Vector2.ZERO || min_maxWeight != Vector2.ZERO):
		if NewSize.x < min_maxWeight.x || NewSize.x > min_maxWeight.y : 
			print("Cumplimiento: ", str(appFather.name))
			return
	
	appFather.custom_minimum_size.x =  NewSize.x/ 3
