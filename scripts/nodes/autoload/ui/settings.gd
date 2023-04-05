extends Window

@onready var selfNode = $"."

func _ready():
	selfNode.visible = false
	selfNode.position = Vector2( 800, 0 )
	selfNode.call_deferred( "set_size", Vector2( 800, 600 ) )

func _input(_event):
	pass

func _on_general_button_pressed():
	pass

func _on_video_button_pressed():
	pass

func _on_audio_button_pressed():
	pass

func _on_contros_button_pressed():
	pass

func _on_extras_button_pressed():
	pass

func _on_debug_button_pressed():
	pass

func _on_back_button_pressed():
	Ui.changeStatus( Ui.backStatus )

func _on_apply_button_pressed():
	pass

func _on_close_requested():
	Ui.changeStatus( Ui.backStatus )
