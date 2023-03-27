extends Node

var num : float

func _ready():
	num = round( randf_range( 0, 999 ) * 10 ) / 10

	if num != 666:
		Global.changeStatus( "main" )
		get_tree().call_deferred( "change_scene_to_file", "res://nodes/main/main.tscn" )
	else:
		get_tree().call_deferred( "change_scene_to_file", "res://nodes/main/main.tscn" )
