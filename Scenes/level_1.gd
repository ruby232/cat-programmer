extends Node2D

func _physics_process(delta: float) -> void:
	if Global.score >= 4:
		get_tree().change_scene_to_file("res://Scenes/level_2.tscn")
