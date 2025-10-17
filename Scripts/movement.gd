extends Node

var speed = 200

func ai_move(body: CharacterBody2D, delta: float, pos: Vector2):
	
	var direction = Vector2.ZERO
	
	if pos.x > body.position.x:
		direction.x += 1
	if pos.x < body.position.x:
		direction.x -= 1
	if pos.y > body.position.y:
		direction.y += 1
	if pos.y < body.position.y:
		direction.y -= 1
	
	if direction != Vector2.ZERO:
		direction = direction.normalized()
		body.position += speed * direction * delta

func move(body: CharacterBody2D, delta: float) -> void: 
	
	var direction = Vector2.ZERO
	
	if Input.is_action_pressed("move_up"):
		direction.y -= 1
	if Input.is_action_pressed("move_down"):
		direction.y += 1
	if Input.is_action_pressed("move_left"):
		direction.x -= 1
	if Input.is_action_pressed("move_right"):
		direction.x += 1
	
	if direction != Vector2.ZERO:
		direction = direction.normalized()
		body.position += speed * direction * delta
