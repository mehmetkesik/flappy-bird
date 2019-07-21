extends Button

func _ready():
	pass

func _on_restartbutton_pressed():
	get_tree().reload_current_scene()
