extends Window

func _ready():
	pass

func _on_yes_button_pressed():
	get_tree().quit()

func _on_no_button_pressed():
	Ui.changeStatus( Ui.backStatus )

func _on_close_requested():
	Ui.changeStatus( Ui.backStatus )
