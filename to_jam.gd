extends Node3D
const LEVEL_1 = preload("res://Dare/levels/Level_1.tscn")
var inside : bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if inside == true : 
		Global.coming_from = str("east")
		get_tree().change_scene_to_file("res://Dare/levels/Level_1.tscn")
		inside = false


func _on_static_body_3d_body_entered(_body: Node3D) -> void:
	inside = true # Replace with function body.
