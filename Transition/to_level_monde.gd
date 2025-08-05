extends Node3D
const MONDE:PackedScene = preload("res://monde.tscn")

@onready var spawner: Node3D = $"../spawner"

var inside:bool= false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
		 # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if inside == true : 
		Global.coming_from = str("east")
		get_tree().change_scene_to_file("res://monde.tscn")
		inside = false


func _on_area_3d_body_entered(_body: Node3D) -> void:
	inside = true # Replace with function body.
