extends StaticBody2D

onready var player = get_parent().get_node("Player")

var has_player = false
var curr_rotation = 0.0
export var anim_rotation = 0.0
var player_last_pos = Vector2()


func _ready():
	pass

func rotation_finished():
	anim_rotation = 0
	curr_rotation = rotation_degrees
	if player.is_rotating:
		player.rotation_matrix = Transform2D(deg2rad(curr_rotation), Vector2.ZERO)
	player.is_rotating = false

func rotate_bodies():
	print("A")
	var rot_anim = $AnimationPlayer.get_animation("Rotate")
	rot_anim.add_track
	pass

func _input(event):
	if event is InputEventKey:
		if event.pressed:
			if event.is_action_pressed("ui_accept"):
				$AnimationPlayer.play("Rotate")
				if has_player:
					player.is_rotating = true
					player_last_pos = player.global_position - self.global_position

func _process(delta):
	if player.is_rotating:
		player.rotation_degrees = curr_rotation + anim_rotation
		player.global_position = self.global_position + Transform2D(deg2rad(anim_rotation), Vector2.ZERO) * player_last_pos
	rotation_degrees = curr_rotation + anim_rotation
	

func _on_Area2D_body_entered(body):
	if body == player:
		has_player = true


func _on_Area2D_body_exited(body):
	if body == player:
		has_player = false
