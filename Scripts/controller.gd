extends Node

var nearest = Vector2(0,0)
var distance = Vector2(0,0)
var pos = Vector2(0,0)

func find_food(body: CharacterBody2D) -> Vector2:
	print(body.get_tree().get_nodes_in_group("food"))
	print(body.global_position)
	for i in range(body.get_tree().get_nodes_in_group("food").size()):
		var item = body.get_tree().get_nodes_in_group("food")[i]
		if(i == 0):
			distance = body.global_position - item.global_position
			nearest = distance
			pos = item.global_position
		else:
			distance = body.global_position - item.global_position
			if(nearest > distance):
				nearest = distance
				pos = item.global_position
		print(item.global_position)
	print(pos)
	
	return pos
