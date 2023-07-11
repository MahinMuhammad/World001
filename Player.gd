extends KinematicBody2D

onready var Spr = $AnimatedSprite

var velocity = 100
var gravity = 100
var gacc = 5 #g acceleration

var direction = Vector2(0,0)

func _physics_process(delta):
	
	direction.y = min(velocity + gacc, gravity)
	
	if Input.is_action_pressed("right"):
		direction.x = velocity
		Spr.play("Run")
		Spr.flip_h = true
	elif Input.is_action_pressed("left"):
		direction.x = -velocity
		Spr.play("Run")
		Spr.flip_h = false
	elif Input.is_action_pressed("jump"):
		direction.y = -min(velocity + gacc, gravity)
	else:
		direction.x = 0
		Spr.play("Idle")
	
	direction = move_and_slide(direction, Vector2.UP)
