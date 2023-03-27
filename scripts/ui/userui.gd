extends Control

var status = "main"

func _ready():
	pass

func _process(_delta):
	#print( "Status: ", Global.status, " BStatus: ", Global.backStatus )
	match Global.status:
		"main":
			$".".top_level = false
			if Input.is_action_just_pressed( "End" ):
				exitCont( true )
				Global.changeStatus( "exit" )
				status = "exit"
			elif Input.is_action_just_pressed( "Esc" ):
				menuCont( true )
				Global.changeStatus( "menu" )
				status = "menu"

		"menu":
			$".".top_level = true
			if Input.is_action_just_pressed( "Esc" ):
				menuCont( false )
				Global.changeStatus( Global.backStatus )
				status = "main"
			elif Input.is_action_just_pressed( "End" ):
				menuCont( false )
				Global.changeStatus( Global.backStatus )
				status = "exit"

		"exit":
			$".".top_level = true
			if Input.is_action_just_pressed( "End" ):
				get_tree().quit()
			elif Input.is_action_just_pressed( "Esc" ):
				exitCont( false )
				Global.changeStatus( Global.backStatus )
				status = "main"
	
	if Input.is_action_just_pressed( "F4" ):
		if DisplayServer.window_get_mode() == 0:
			@warning_ignore("int_as_enum_without_cast")
			DisplayServer.window_set_mode(3) # FullScreen
		elif DisplayServer.window_get_mode() == 3:
			@warning_ignore("int_as_enum_without_cast")
			DisplayServer.window_set_mode(0)

func _on_no_button_pressed():
	$AnimateUI.play( "ToCancelExit" )
	Global.changeStatus( Global.backStatus )
	status = "main"

func _on_animate_exit_animation_finished( _name ):
	if _name == "ToCancelExit":
		$Exit.visible = false
	elif _name == "ToCancelMenu":
		pass

@warning_ignore("shadowed_variable_base_class")
func menuCont( visible ):
	if visible == true:
		$AnimateUI.play( "ToMenu" )
	elif visible == false:
		$AnimateUI.play( "ToHideMenu" )

@warning_ignore("shadowed_variable_base_class")
func exitCont( visible ):
	if visible == true:
		$Exit.visible = true
		$AnimateUI.play( "ToExit" )

	elif visible == false:
		$AnimateUI.play( "ToCancelExit" )
