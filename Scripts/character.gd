extends CharacterBody2D

@onready var movement = preload("res://Scripts/movement.gd").new()
@onready var mind = preload("res://Scripts/controller.gd").new()

func _ready() -> void:
	pass

func _physics_process(delta: float) -> void:
	movement.ai_move(self, delta, mind.find_food(self))
	move_and_slide()
