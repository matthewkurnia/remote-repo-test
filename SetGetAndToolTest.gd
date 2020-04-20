tool
extends Sprite

export var modulation : float = 0.0 setget set_modulation, get_modulation

func _ready():
	print(Color.white)

func set_modulation(value):
	print("AAAA")
	modulation = value
	modulate = Color(modulation, modulation, modulation, 1.0)
	print(modulate)

func get_modulation():
	return modulation
