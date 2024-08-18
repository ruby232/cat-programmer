extends CharacterBody2D

var move_speed = 100
var jump_speed = 400
var is_facing_rigth = true
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@onready var animated_spite = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	move_x()
	flip()
	jump(delta)
	update_animated()
	move_and_slide()

func jump(delta):
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = -jump_speed
		$JumpSound.play()

	if not is_on_floor():
		velocity.y += gravity * delta

func move_x():
	var input_axis = Input.get_axis("move_left", "move_right")
	velocity.x = input_axis * move_speed
	
func flip():
	if (is_facing_rigth and velocity.x < 0) or (not is_facing_rigth and velocity.x > 0):
		scale.x *= -1
		is_facing_rigth = not is_facing_rigth

func update_animated():
	if not is_on_floor():
		if velocity.y < 0:
			animated_spite.play("jump")
			return
	
		if position.y > 200:
			animated_spite.play("dead")		
		
		animated_spite.play("fall")
		return
		
	
	
	
	if velocity.x:
		animated_spite.play("run")
	else:
		animated_spite.play("idle")
	
