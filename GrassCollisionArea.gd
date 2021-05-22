extends CollisionShape2D

const GrassballResource = preload("res://Grassball.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_GrassZone_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("SpawnOrb"):
		var grassball = GrassballResource.instance()
		grassball.position = get_local_mouse_position()
		add_child(grassball)
