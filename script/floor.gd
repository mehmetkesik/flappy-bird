extends Node2D

func _ready():
	var floor1 = get_node("floor1")
	var floor2 = get_node("floor2")
	var floor3 = get_node("floor3")
	var x_fark = floor1.texture.get_size().x
	var y_fark = floor1.texture.get_size().y * scale.y
	floor2.position.x = floor1.position.x + x_fark
	floor3.position.x = floor2.position.x + x_fark
	position.y = get_viewport().size.y -  (y_fark/2)
	position.x = (floor1.texture.get_size().x * scale.x)/2
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
