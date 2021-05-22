extends CollisionShape2D

const FireballResource = preload("res://Fireball.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _on_FireZone_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("SpawnOrb"):
		var fireball = FireballResource.instance()
		fireball.position = get_local_mouse_position()
		add_child(fireball)
