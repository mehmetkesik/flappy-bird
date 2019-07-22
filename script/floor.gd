extends Node2D

func _ready():
	var floor1 = get_node("floor1")
	var floor2 = get_node("floor2")
	var floor3 = get_node("floor3")
	floor2.position.x = floor1.position.x + floor1.texture.get_size().x
	floor3.position.x = floor2.position.x + floor1.texture.get_size().x
	position.x = floor1.texture.get_size().x/2