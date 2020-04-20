extends KinematicBody2D

var drag_enabled : bool = false
var velo = Vector2()

func _ready():
	pass # Replace with function body.

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT:
			drag_enabled = event.pressed

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and not event.pressed:
			drag_enabled = false
	
	if drag_enabled:
		global_position = get_global_mouse_position()

func _physics_process(delta):
	if not drag_enabled:
		velo.y += 10
	velo = move_and_slide(velo)
