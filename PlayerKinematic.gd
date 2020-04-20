extends KinematicBody2D

var velocity = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x = 100
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -100
	else:
		velocity.x = 0
	
	velocity.y += 10
	
	velocity = move_and_slide(velocity, Vector2(0, -1))
