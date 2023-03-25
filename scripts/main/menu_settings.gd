extends Control

## Import ## 
@onready var Self = $"."
@onready var MSCont = $MSCont
@onready var GeneralS = $MSCont/MSVCont/MSHCont/MSTabsHCont/Settings_General
@onready var VideoS = $MSCont/MSVCont/MSHCont/MSTabsHCont/Settings_Video
@onready var AudioS = $MSCont/MSVCont/MSHCont/MSTabsHCont/Settings_Audio
@onready var ControlsS = $MSCont/MSVCont/MSHCont/MSTabsHCont/Settings_Controls
@onready var ExtrasS = $MSCont/MSVCont/MSHCont/MSTabsHCont/Settings_Extras
@onready var DebugS = $MSCont/MSVCont/MSHCont/MSTabsHCont/Settings_Debug

## Process ##
func _ready():
	pass

func _process(_delta):
	pass

func _input(_event):
	pass

## Buttons MSCont ##
func _on_general_button_pressed():
	disable_nodes()

func _on_video_button_pressed():
	disable_nodes()
	VideoS.visible = true

func _on_audio_button_pressed():
	disable_nodes()
	AudioS.visible = true

func _on_contros_button_pressed():
	disable_nodes()
	ControlsS.visible = true

func _on_extras_button_pressed():
	disable_nodes()
	ExtrasS.visible = true

func _on_debug_button_pressed():
	disable_nodes()
	DebugS.visible = true

func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://nodes/main/main.tscn")

func disable_nodes():
	GeneralS.visible = false
	VideoS.visible = false
	AudioS.visible = false
	ControlsS.visible = false
	ExtrasS.visible = false
	DebugS.visible = false
