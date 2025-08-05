extends Node3D
@onready var spawner: Node3D = $spawner


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Global.coming_from == str("north"):
		pass
		#spawner.position = Vector3(0.0,0.0,0.0)
	elif Global.coming_from == str("west"):
		pass
		#spawner.position = Vector3(-0.675,0.14,0.225)
	elif Global.coming_from == str("south"):
		pass
		#spawner.position = Vector3(0.0,0.14,-0.675)
	elif Global.coming_from == str("east"):
		spawner.position = Vector3(1.05,0.09,0.225)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
