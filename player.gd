extends CharacterBody2D

var facing_right = true

@export var speed = 100
@export var friction = 0.5
@export var acceleration = 0.2

@onready var animated_sprite = $AnimatedSprite2D

func get_input():
	var input = Vector2()
	if Input.is_action_pressed('right'):
		input.x += 1
	if Input.is_action_pressed('left'):
		input.x -= 1
	if Input.is_action_pressed('down'):
		input.y += 1
	if Input.is_action_pressed('up'):
		input.y -= 1
	if Input.is_action_pressed('shift'):
		speed = 200
	else: speed = 100	

	return input

func _physics_process(delta):
	var direction = get_input()
	if direction.length() > 0:
		velocity = velocity.lerp(direction.normalized() * speed, acceleration)
	else:
		velocity = velocity.lerp(Vector2.ZERO, friction)
		
	if Input.is_action_pressed("left"):
		animated_sprite.flip_h = true
		facing_right = false
	elif Input.is_action_pressed("right"):
		animated_sprite.flip_h = false
		facing_right = true
			
	move_and_slide()
