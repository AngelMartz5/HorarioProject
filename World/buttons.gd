extends Button
const Types = {
	MovileResolution = Vector2(1,0),
	IPHONEResolution = Vector2(2,2),
	AndroidResolution = Vector2(10,10)
}

enum EnumTypes{
	MovileResolution,
	IPHONEResolution,
	AndroidResolution
}

@export var buttonType : EnumTypes = EnumTypes.IPHONEResolution

func _ready():
	var selected_type_name = EnumTypes.keys()[buttonType]
	var resolution = Types[selected_type_name]
	
	print(selected_type_name, " => ", resolution, "  Lo llamo: ", self.name)
