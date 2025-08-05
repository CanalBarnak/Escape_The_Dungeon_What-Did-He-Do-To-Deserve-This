extends CSGCombiner3D
@onready var csg_combiner_3d: CSGCombiner3D = $"."


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	csg_combiner_3d.material_override.albedo_color = Color(0.377, 0.544, 0.829)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
"albedo_color"
