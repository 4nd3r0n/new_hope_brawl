extends Control

## Import ##
@onready var Self = $'.'
@onready var MenuSettings = $MenuSettings
@onready var Exit = $Controls/Exit
@onready var MainButtons = $MenuCont/MainCont/ButtonsVCont/ButtonsVCont
@onready var StartButton = $MenuCont/MainCont/ButtonsVCont/ButtonsVCont/StartButton
@onready var SettingsButton = $MenuCont/MainCont/ButtonsVCont/ButtonsVCont/SettingsButton
@onready var ExitButton = $MenuCont/MainCont/ButtonsVCont/ButtonsVCont/ExitButton

## Process ##
func _ready():
	StartButton.grab_focus()

func _process(_delta):
	pass

## Buttons ##
func _on_start_button_pressed(): # Start Button
	pass

func _on_settings_button_pressed(): # Settings Button
	get_tree().change_scene_to_file("res://nodes/ui/menu_settings/menu_settings.tscn")

func _on_exit_button_pressed(): # Exit Button
	dis_buttons( true )
	Exit.visible = !Exit.visible

## Menu Settings ##
func _on_back_button_pressed():
	MainButtons.visible = true

## Exit ##
func _on_no_button_pressed():
	dis_buttons( false )

## Funciones ##
func dis_buttons( mode ):
	if mode == true:
		StartButton.disabled = true
		StartButton.focus_mode = FOCUS_NONE
		SettingsButton.disabled = true
		SettingsButton.focus_mode = FOCUS_NONE
		ExitButton.disabled = true
		ExitButton.focus_mode = FOCUS_NONE
	elif mode == false:
		StartButton.disabled = false
		StartButton.focus_mode = FOCUS_ALL
		SettingsButton.disabled = false
		SettingsButton.focus_mode = FOCUS_ALL
		ExitButton.disabled = false
		ExitButton.focus_mode = FOCUS_ALL
