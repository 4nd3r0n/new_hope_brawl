''' By Anderon_2201:
Este script se ejecuta todo el tiempo de ejecución en en AutoLoad.

Botones asignados para esté script
Esc, End, F4'''

extends Control

var animateSettings : bool
var animateExit : bool

var status : String
var backStatus : String

func _process(_delta):
	#print( "Status: ", Ui.status, " BStatus: ", Ui.backStatus )
	match status:
		"main":
			if Input.is_action_just_pressed( "End" ):
				changeStatus( "exit" )
			elif Input.is_action_just_pressed( "Esc" ):
				changeStatus( "settings" )

		"settings":
			if Input.is_action_just_pressed( "Esc" ):
				changeStatus( backStatus )
			elif Input.is_action_just_pressed( "End" ):
				changeStatus( backStatus )

		"exit":
			if Input.is_action_just_pressed( "End" ):
				get_tree().quit()
			elif Input.is_action_just_pressed( "Esc" ):
				changeStatus( backStatus )

		"_":
			print( "Error" )

func _input(_event):
	if Input.is_action_just_pressed( "F4" ):
		if DisplayServer.window_get_mode() == 0:
			DisplayServer.call_deferred( "window_set_mode", 3 )
		elif DisplayServer.window_get_mode() == 3:
			DisplayServer.call_deferred( "window_set_mode", 0 )

func changeStatus( value ):
	backStatus = status
	status = value

func currentScene():
	var getCS = get_tree().current_scene.scene_file_path
	return getCS
