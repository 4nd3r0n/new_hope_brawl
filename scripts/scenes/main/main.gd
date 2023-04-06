extends Control

@onready var startButton = $MenuCont/MainCont/ButtonsVCont/ButtonsVCont/StartButton
@onready var settingsButton = $MenuCont/MainCont/ButtonsVCont/ButtonsVCont/SettingsButton
@onready var exitButton = $MenuCont/MainCont/ButtonsVCont/ButtonsVCont/ExitButton

func _ready():
	Ui.changeStatus( "main" )

func _process(_delta):
	match Ui.status:
		"main":
			startButton.disabled = false
			startButton.call_deferred( "set_focus_mode", 2 )
			settingsButton.disabled = false
			settingsButton.call_deferred( "set_focus_mode", 2 )
			exitButton.disabled = false
			exitButton.call_deferred( "set_focus_mode", 2 )

		_:
			startButton.disabled = true
			startButton.call_deferred( "set_focus_mode", 0 )
			settingsButton.disabled = true
			settingsButton.call_deferred( "set_focus_mode", 0 )
			exitButton.disabled = true
			exitButton.call_deferred( "set_focus_mode", 0 )

func _on_settings_button_pressed():
	Ui.changeStatus( "settings" )

func _on_exit_button_pressed():
	Ui.changeStatus( "exit" )
