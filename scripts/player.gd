extends CharacterBody2D

const PLAYER_SPEED = 500

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	# get input
	var direction = Input.get_vector("left", "right", "forward", "backward")	
	velocity = direction * PLAYER_SPEED
	# delta is automatically included with move and slide
	move_and_slide()	

	# fire
	if Input.is_action_pressed("primary action"):
		print("ZAP!")
		
	if Input.is_action_pressed("secondary_action"):
		print("KABOOM!")
