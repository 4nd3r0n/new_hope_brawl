extends Node
class_name ControlsTest

func _ready():
	pass

func _process(_delta):
	pass

func _input(_event):
	if Input.is_action_just_pressed("Esc"):
		$MenuSettings.visible = !$MenuSettings.visible
