extends Node2D

const DISTANCE_TO_CAMERA = 2000.0

export var distance = 0.0
var motion_scale
var camera_pos

func _set_parallax_property():
	var ratio = DISTANCE_TO_CAMERA / (DISTANCE_TO_CAMERA - distance) * Vector2(1, 1)
	var children = get_children()
	for child in children:
		child.scale = ratio
		child.position *= ratio
	motion_scale = ratio
	

func _ready():
	pass

func _process(delta):
	camera_pos = GlobalCamera.get_camera_position()
	global_position = camera_pos - motion_scale * camera_pos