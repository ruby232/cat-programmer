extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.get_name() == "Player":
		if Global.score >= 7:
			get_tree().change_scene_to_file("res://Scenes/level_3.tscn")
		
