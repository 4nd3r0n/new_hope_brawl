extends Node

var fullScreen : bool

func _ready():
	pass

func _process(_delta):
	pass

func changeFS( op ):
	if op != false:
		DisplayServer.call_deferred( "window_set_mode", 3 )
	else:
		DisplayServer.call_deferred( "window_set_mode", 0 )
