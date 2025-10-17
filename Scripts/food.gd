extends Area2D

func _ready():
	connect("body_entered", Callable(self, "on_body_entered"))

func _on_body_entered(body):
	if body.is_in_group("player"):
		queue_free()
		body.scale *= Vector2(1.05,1.05)
