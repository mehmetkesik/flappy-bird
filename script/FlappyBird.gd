extends Node2D

var speed = 2
var score = 0

func _ready():
	pass

func _on_speedTimer_timeout():
	speed+=1
