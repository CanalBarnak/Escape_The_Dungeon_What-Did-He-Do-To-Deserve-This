extends CharacterBody2D


const SPEED:float = 300.0


func _physics_process(_delta: float) -> void:
	
	var direction:Vector2 = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	
	if direction:
		self.velocity = direction * SPEED
	else:
		self.velocity = Vector2.ZERO
	
	move_and_slide()
