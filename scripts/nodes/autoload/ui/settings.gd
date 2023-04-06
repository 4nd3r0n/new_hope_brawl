extends Window

@onready var selfNode = $"."
@onready var generalSettings = $MSCont/MSVCont/MSHCont/MSTabsHCont/SettingsGeneral
@onready var videoSettings = $MSCont/MSVCont/MSHCont/MSTabsHCont/SettingsVideo
@onready var debugSettings = $MSCont/MSVCont/MSHCont/MSTabsHCont/SettingsDebug

@onready var backButton = $MSCont/MSVCont/MSHCont/MSVCont/MSBackHCont/BackButton
@onready var appplyButton = $MSCont/MSVCont/MSHCont/MSVCont/MSBackHCont/ApplyButton

func _ready():
	generalSettings.visible = true

func _on_general_button_pressed():
	hideSettings()
	generalSettings.visible = true
	selfNode.title = "Settings - General"

func _on_video_button_pressed():
	hideSettings()
	videoSettings.visible = true
	selfNode.title = "Settings - Video"

func _on_audio_button_pressed():
	pass

func _on_contros_button_pressed():
	pass

func _on_extras_button_pressed():
	pass

func _on_debug_button_pressed():
	hideSettings()
	debugSettings.visible = true
	selfNode.title = "Settings - Debug"

func _on_back_button_pressed():
	Ui.changeStatus( Ui.backStatus )

func _on_apply_button_pressed():
	pass

func _on_close_requested():
	Ui.changeStatus( Ui.backStatus )

func hideSettings():
	generalSettings.visible = false
	videoSettings.visible = false
	debugSettings.visible = false

func cancelButton():
	backButton.text = "Cancel"
