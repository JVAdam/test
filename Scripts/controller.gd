extends Node

var foods = []

func find_food(body: CharacterBody2D):
	print(body.get_tree().get_nodes_in_group("food"))
	
