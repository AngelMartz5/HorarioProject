extends Control


func _ready():
	MainSignal.SizeChange.connect(_emptySizeChange)
	

func _emptySizeChange(NewSize : Vector2):
	self.custom_minimum_size.x =  NewSize.x/ 3
	print("KK")
