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
	var moveX = get_parent().get_parent().speed / get_parent().scale.x
	position.x -= moveX
	if position.x < -(get_node("topPipe").texture.get_size().x):
		position.x += 1500
		rastPosY()
		
	var birdPos = get_parent().get_parent().get_node("bird").position.x
	if position.x <= birdPos and position.x + moveX > birdPos:
		get_parent().get_parent().score += 1
		get_parent().get_parent().get_node("score").text = "Score: "+str(get_parent().get_parent().score)

func rastPosY():
	var rast = -(randi()%250+50)
	position.y = rast