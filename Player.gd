extends KinematicBody2D

var velo = Vector2()
var true_velo = Vector2()
var x_dir = 0.0
var is_rotating = false

var rotation_matrix = Transform2D.IDENTITY

func _ready():
	GlobalCamera.set_player(self)
	pass # Replace with function body.

func _physics_process(delta):
	
	
	if is_rotating:
		velo = move_and_slide(Vector2.ZERO)
		return
	
	#Horizontal Movement
	var input_dir = float(Input.is_action_pressed("ui_right")) - float(Input.is_action_pressed("ui_left"))
	x_dir = lerp(x_dir, 300 * input_dir, 0.3)
	velo.x = x_dir
	
	#Jump
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		velo.y = -700.0
	
	#Gravity
	velo.y += 30
	
	true_velo = move_and_slide(rotation_matrix * velo, rotation_matrix * Vector2(0, -1))
	velo = rotation_matrix.inverse() * true_velo
	pass
