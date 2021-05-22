extends CollisionShape2D

const WaterballResource = preload("res://Waterball.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_WaterZone_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("SpawnOrb"):
		var waterball = WaterballResource.instance()
		waterball.position = get_local_mouse_position()
		add_child(waterball)
