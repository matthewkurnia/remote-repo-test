extends Control

var path = "res://data.dat"

var default_data = {
	"value" : 0
}

var test_data = {
	"player" : 0,
	"enemy" : 2,
	"world" : 3
}

var x = {}

var data = {}


class struct:
	var a : int = 0 
	var b : int = 10
	
	static func stafunc():
		return "struct class has a function"
	
	func _init():
		pass


func update_label():
	$VBoxContainer/Label.text = String(data.value)


func _ready():
	print(struct.stafunc())
	x = struct.new()
	print(x.b)
	load_game()
	update_label()


func load_game():
	var file = File.new()
	
	if not file.file_exists(path):
		reset_data()
		return
	
	file.open(path, file.READ)
	
	data = file.get_var()
	x = file.get_var()
	print(x)
	
	file.close()


func save_game():
	var file
	
	file = File.new()
	
	file.open(path, File.WRITE)
	
	file.store_var(data)
	file.store_var(test_data)
	
	file.close()


func reset_data():
	data = default_data.duplicate(true)


func _on_Plus_pressed():
	data.value += 1
	update_label()


func _on_Minus_pressed():
	data.value -= 1
	update_label()
