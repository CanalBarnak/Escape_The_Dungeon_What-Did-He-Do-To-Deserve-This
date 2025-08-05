extends Node3D
var current_level:int = 1
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("connected")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_area_3d_body_entered(_body: Node3D) -> void:
	var current_scene_file:String = get_tree().current_scene.scene_file_path
	var next_level_number:int = current_scene_file.to_int()+1
	var next_level_path:String = "res://levels/level_"+str(next_level_number)+".tscn"
	get_tree().change_scene_to_file(next_level_path)
