extends CharacterBody2D

@onready var movement = preload("res://Scripts/movement.gd").new()
@onready var mind = preload("res://Scripts/controller.gd").new()

var nearest = Vector2(0,0)
var distance = Vector2(0,0)
var pos = Vector2(0,0)

func _ready() -> void:
	print(self.global_position)
	for i in range(11):
		var item = get_tree().get_nodes_in_group("food")[i]
		if(i == 0):
			distance = self.global_position - item.global_position
			nearest = distance
			pos = item.global_position
		else:
			distance = self.global_position - item.global_position
			if(nearest > distance):
				nearest = distance
				pos = item.global_position
		print(item.global_position)
	print(pos)


func _physics_process(delta: float) -> void:
	movement.ai_move(self, delta, pos)
	mind.find_food(self)
	move_and_slide()
