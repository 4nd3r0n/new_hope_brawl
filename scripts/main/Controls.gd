extends Control

@onready var Exit = $Exit
@onready var ExitLabel = $ExitLabel
@onready var TimerExit = $ExitTimer

func _ready():
	ExitLabel.text = " "

func _input(_event):
	# Change FullScreen or Windowed Screen
	if Input.is_action_just_pressed("F4"):
		if DisplayServer.window_get_mode() == 0:
			@warning_ignore("int_as_enum_without_cast")
			DisplayServer.window_set_mode(3) # FullScreen
		elif DisplayServer.window_get_mode() == 3:
			@warning_ignore("int_as_enum_without_cast")
			DisplayServer.window_set_mode(0) # Windowed Screen

	if Input.is_action_pressed("End"):
		TimerExit.start()
		ExitLabel.text = "Exit"
	elif Input.is_action_just_released("End"):
		TimerExit.stop()
		ExitLabel.text = " "

func _on_exit_timer_timeout():
	get_tree().quit()
