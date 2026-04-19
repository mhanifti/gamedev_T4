extends RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _on_FallArea_body_entered(body):
	if body.get_name() == "Player":
		Global.lives -= 1
		if (Global.lives == 0):
			Global.lives = 3
			get_tree().change_scene_to_file(str("res://scenes/GUI/GameOver.tscn"))
		else:
			get_tree().change_scene_to_file(str("res://scenes/Level" + str(Global.curLevel) + ".tscn"))
