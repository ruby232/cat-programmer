extends CharacterBody2D

var angle = 0.0
var radius_x = 125.0
var radius_y = 25.0
var speed = 2.0
@onready var center_position = position

func _ready() -> void:
	pass
	
	
func _physics_process(delta):
	angle += speed * delta
	var x = center_position.x + radius_x * cos(angle)
	var y = center_position.y + radius_y * sin(angle)
	position = Vector2(x, y)

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.get_name() == "Player":
		Global.lives -= 1
