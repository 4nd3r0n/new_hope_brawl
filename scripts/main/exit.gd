extends Control

@onready var Self = $"."

func _ready():
	pass

func _on_yes_button_pressed():
	get_tree().quit()

func _on_no_button_pressed():
	Self.visible = false
