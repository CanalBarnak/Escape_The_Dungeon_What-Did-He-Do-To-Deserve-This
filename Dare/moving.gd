extends Node3D
var position_progress:float
@export var positionne:Curve
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	self.position = Vector3(2,0,4+positionne.sample(position_progress))


func _on_timer_timeout() -> void:
	if position_progress <= positionne.max_value:
		position_progress += 0.01
	else:
		position_progress = 0
		print(position_progress)
