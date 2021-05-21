extends CollisionShape2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if Input.is_action_pressed("SpawnOrb"):
		var fire = load("res://Fireball.tscn")
		var fireball = fire.instance()
		add_child_below_node(get_tree().get_root().get_node("MainScene"), fireball)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
