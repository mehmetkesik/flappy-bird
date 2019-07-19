extends StaticBody2D
#-50 ile -300 arasında pozisyon değeri değişecek

func _ready():
	randomize()
	rastPosY()
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	position.x -= get_parent().get_parent().speed / get_parent().scale.x
	if position.x < -(get_node("topPipe").texture.get_size().x):
		position.x += 1200
		rastPosY()
	pass

func rastPosY():
	var rast = -(randi()%250+50)
	position.y = rast