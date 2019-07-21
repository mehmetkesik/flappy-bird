extends KinematicBody2D

var velocity = 0
var angle = 0
var game = true

func _ready():
	get_node("birdSprite").playing = true

func _physics_process(delta):
	if not game:
		return
	if isPress():
		velocity -= 8
		if velocity < -8:
			velocity = -8
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
		get_parent().get_node("resultvbox").get_node("resultscore").text = "Score: "+str(get_parent().score)
		get_parent().get_node("resultvbox").visible = true
		get_parent().get_node("puruzSprite").visible = true
		get_parent().speed = 0
		get_node("birdSprite").playing = false
		game = false
	

func isPress():
	if Input.is_action_pressed("ui_select") or Input.is_action_pressed("leftMouse"):
		return true
	return false