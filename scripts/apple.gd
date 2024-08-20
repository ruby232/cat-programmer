extends Area2D



func _on_body_entered(body: Node2D) -> void:
	if body.get_name() == "Player":
		Global.score += 1
		queue_free()
		$ConfirmSong.play()
