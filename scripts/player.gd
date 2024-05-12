extends Node2D

const PLAYER_SPEED = 350

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# get input
	var direction = Input.get_vector("left", "right", "forward", "backward")
	position += direction * PLAYER_SPEED * delta

	# fire
	if Input.is_action_pressed("primary action"):
		print("ZAP!")
		
	if Input.is_action_pressed("secondary_action"):
		print("KABOOM!")
