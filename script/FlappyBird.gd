extends Node2D

var speed = 2
var score = 0

func _ready():
	#restartGame()
	pass

func restartGame():
	var startCount = get_node("schbox/scvbox/startCount")
	get_tree().paused = true
	yield(get_tree().create_timer(1), "timeout")
	startCount.text = "2"
	yield(get_tree().create_timer(1), "timeout")
	startCount.text = "1"
	yield(get_tree().create_timer(1), "timeout")
	startCount.visible = false
	get_tree().paused = false
	pass