extends Node2D

class MyCustomSorter:
	static func sort(a, b):
		if a.distance < b.distance:
			return true
		return false

func _process(delta):
#	rotation_degrees = -get_parent().rotation_degrees
	pass

func _ready():
	var i = 0
	var children = get_children()
	children.sort_custom(MyCustomSorter, "sort")
	for child in children:
		child._set_parallax_property()
		child.set_z_index(i)
		i += 1
	

