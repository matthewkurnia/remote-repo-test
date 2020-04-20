extends Camera2D

var player = false setget set_player

func set_player(player_node : Node):
	player = player_node
	set_process(true)
	pass

func _init():
	set_process(false)

func _ready():
	pass # Replace with function body.

func _process(delta):
	if player:
		global_position = player.global_position
		rotation_degrees = player.rotation_degrees