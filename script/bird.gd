extends KinematicBody2D

var velocity = 0
var angle = 0

func _ready():
	get_node("birdSprite").playing = true

func _physics_process(delta):
	if isPress():
		velocity -= 10
		if velocity < -10:
			velocity = -10
	if velocity < 5:
		velocity += 1
	
	angle = velocity * 5
	if abs(angle) > 25:
		if angle < 0:
			angle = -25
		else:
			angle = 25
			
	rotation_degrees = angle
	
	if move_and_collide(Vector2(0,velocity)):
		get_tree().reload_current_scene()
	#position.y += velocity
	

func isPress():
	if Input.is_action_pressed("ui_select") or Input.is_action_pressed("leftMouse"):
		return true
	return false