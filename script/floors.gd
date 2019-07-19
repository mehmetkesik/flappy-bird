extends Sprite

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Timer_timeout():
	position.x -= get_parent().get_parent().speed / get_parent().scale.x
	if position.x < -(texture.get_size().x):
		position.x += texture.get_size().x * 3
	pass 
