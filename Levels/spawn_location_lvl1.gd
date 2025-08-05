extends Node3D
@onready var spawner: Node3D = $spawner


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Global.coming_from == str("north"):
		# none on this map
		pass
		#spawner.position = Vector3(-0.675,0.14,0.225)
	elif Global.coming_from == str("west"):
		# good
		spawner.position = Vector3(-0.675,0.09,0.225)
	elif Global.coming_from == str("south"):
		# should be good
		spawner.position = Vector3(0.0,0.09,-0.675)
	elif Global.coming_from == str("east"):
		# should be good
		spawner.position = Vector3(-1.125,0.09,0.225)
		 # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
