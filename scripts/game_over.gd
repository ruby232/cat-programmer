extends Control

func _ready() -> void:	
	$VBoxContainer/ButtonPlayAgaint.grab_focus()


func _on_button_start_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/level_1.tscn")


func _on_button_quick_pressed() -> void:
	get_tree().quit()
