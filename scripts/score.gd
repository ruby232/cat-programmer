extends CanvasLayer

@onready var countLabel = $count  
@onready var heart1 = $Heart1
@onready var heart2 = $Heart2
@onready var heart3 = $Heart3

func _ready() -> void:
	countLabel.text =  str(Global.score)

func _physics_process(delta: float) -> void:
	countLabel.text =  str(Global.score)
	
	$Heart3.visible = false
	$Heart2.visible = false
	$Heart1.visible = false

	if Global.lives == 3:
		$Heart3.visible = true
		$Heart2.visible = true
		$Heart1.visible = true
	
	if Global.lives == 2:
		$Heart2.visible = true
		$Heart1.visible = true
	
	if Global.lives == 1:
		$Heart1.visible = true
		
	
