extends Control

@onready var starButton = $MenuCont/MainCont/ButtonsVCont/ButtonsVCont/StartButton
@onready var settingsButton = $MenuCont/MainCont/ButtonsVCont/ButtonsVCont/SettingsButton
@onready var exitButton = $MenuCont/MainCont/ButtonsVCont/ButtonsVCont/ExitButton

func _ready():
	Ui.changeStatus( "main" )

func _process(_delta):
	match Ui.status:
		"main":
			starButton.disabled = false
			settingsButton.disabled = false
			exitButton.disabled = false

		_:
			starButton.disabled = true
			settingsButton.disabled = true
			exitButton.disabled = true

func _on_settings_button_pressed():
	Ui.changeStatus( "settings" )

func _on_exit_button_pressed():
	Ui.changeStatus( "exit" )
