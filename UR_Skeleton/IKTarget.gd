extends Marker3D

@export var step_target: Node3D

var is_stepping := false

func _process(delta):
	if !is_stepping && Input.is_action_pressed("Play"):
		move()

func move():
	var target_pos = step_target.global_position
	var t = get_tree().create_tween()
	
	is_stepping = true
	t.tween_property(self, "global_position", target_pos, 2)
	t.tween_callback(func(): is_stepping = false)
