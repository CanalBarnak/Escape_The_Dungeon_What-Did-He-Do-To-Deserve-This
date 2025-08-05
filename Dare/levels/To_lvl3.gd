extends Node3D
const LEVEL_2:PackedScene = preload("res://Dare/levels/Level_3.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_area_3d_body_entered(_body: Node3D) -> void:
	get_tree().change_scene_to_file("res://Dare/levels/Level_3.tscn") # Replace with function body.
