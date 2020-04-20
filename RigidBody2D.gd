extends RigidBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _integrate_forces(state):
	if Input.is_action_pressed("ui_right"):
		linear_velocity.x = 400
	elif Input.is_action_pressed("ui_left"):
		linear_velocity.x = -400
	else:
		linear_velocity.x = 0
	
	if Input.is_action_just_pressed("ui_accept"):
		linear_velocity.y = -500
	pass

#func _physics_process(delta):
#	if Input.is_action_pressed("ui_right"):
#		linear_velocity.x = 100
#	elif Input.is_action_pressed("ui_left"):
#		linear_velocity.x = -100
#	else:
#		linear_velocity.x = 0
#
#	if Input.is_action_just_pressed("ui_accept"):
#		linear_velocity.y = -500
