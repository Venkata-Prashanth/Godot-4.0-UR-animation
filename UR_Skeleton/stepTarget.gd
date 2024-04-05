extends Marker3D

var speed = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var movement = Vector3.ZERO
	
	if Input.is_action_just_pressed("x+"):
		movement.x +=1
	if Input.is_action_just_pressed("x-"):
		movement.x -=1
	if Input.is_action_just_pressed("y+"):
		movement.y +=1
	if Input.is_action_just_pressed("y-"):
		movement.y -=1
	if Input.is_action_just_pressed("z+"):
		movement.z +=1
	if Input.is_action_just_pressed("z-"):
		movement.z -=1
	# Normalize movement vector to prevent faster diagonal movement
	movement = movement.normalized()

	# Move the Marker3D node based on keyboard input
	position += movement * speed * delta
