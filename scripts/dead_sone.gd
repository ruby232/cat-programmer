extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.get_name() == "Player":
		Global.score = 0
		Global.lives -= 1
		if get_tree():
			get_tree().reload_current_scene()
