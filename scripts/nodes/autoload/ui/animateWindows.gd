extends AnimationPlayer

@onready var animate = $"."

var playAnimate : bool

func _process(_delta):
	match Ui.status:
		"settings":
			if playAnimate == false:
				animate.play( "SettingsAppear" )
				playAnimate = true

		"exit":
			if playAnimate == false:
				animate.play( "ExitAppear" )
				playAnimate = true

		_:
			animate.play( "RESET" )
			playAnimate = false
