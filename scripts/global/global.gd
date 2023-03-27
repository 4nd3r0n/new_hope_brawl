extends Node

var status : String
var backStatus : String

func changeStatus( value ):
	backStatus = status
	status = value
