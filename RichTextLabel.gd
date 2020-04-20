extends RichTextLabel

const TWEEN_DURATION : float = 2.0
var current_visible_characters = 0

var test : float = 0.0 setget set_test, get_test

func _ready():
	test = 10
	$Tween.interpolate_property(self, "test", 0.0, 1.0, TWEEN_DURATION, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	$Tween.start()
	pass

func set_test (value : float) -> void:
	print("test")
	test = value
	percent_visible = test
	if ['.', '?', '!'].has(text[visible_characters-1]):
		$Tween.playback_speed = 0.1
	else:
		$Tween.playback_speed = 1.0

func get_test () -> float:
	print("get test")
	return test


#func _process(delta):
#	var i = floor(percent_visible * float(text.length()))
#	if ['.', '?', '!'].has(text[visible_characters-1]):
#		$Tween.playback_speed = 0.1
#	else:
#		$Tween.playback_speed = 1.0
#
#
#	if visible_characters/text.length():
#		if ['.', '?', '!'].has(text[visible_characters]):
#			$Tween.playback_speed = 0.1
#		else:
#			$Tween.playback_speed = 1.0
