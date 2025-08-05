extends Node3D
const LEVEL_1:PackedScene = preload("res://Levels/Level_1.tscn")
var inside:bool= false

# Créer une fonction pour savoir de quel direction que le héro arrive

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if inside == true : 
		Global.coming_from = str("west")
		get_tree().change_scene_to_packed(LEVEL_1)
		inside = false
		


func _on_area_3d_2_body_entered(_body: Node3D) -> void:
	inside = true
	
