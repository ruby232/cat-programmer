extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.get_name() == "Player":
		get_tree().reload_current_scene()
