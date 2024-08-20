extends Node

var score: int  = 0
var lives = 3

func _physics_process(delta: float) -> void:
	if lives == 0:
		get_tree().change_scene_to_file("res://Scenes/game_over.tscn")
		lives = 3

#func change_level_2():
	#if Global.score >= 4:
		#get_tree().change_scene_to_file("res://Scenes/level_2.tscn")
