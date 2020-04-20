extends BaseClass

enum states {
	run = -1
	jump
	fall
	dash
}

func handle_input(event):
	print("AAAA")

func _ready() -> void :
	print(states.values())
	print(states.run)
	print(states)
	function()
	._ready()

func function():
	print("private")
	return .function()

#func _input(event):
#	if event.is_action("ui_accept"):
#		print("A")

func this_is_a_function(var x : Vector2) -> Vector2:
	return x
