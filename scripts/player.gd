extends CharacterBody2D

const PLAYER_SPEED = 500

signal laser(position)
signal player_threw_grenade

var can_shoot_laser: bool = true
var can_shoot_grenade: bool = true

# Called when the node enters the scene tree for the first time.
func _ready():
	# start level time elapsed timer
	$GrenadeReloadTimer.start()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	# get input
	var direction = Input.get_vector("left", "right", "forward", "backward")	
	velocity = direction * PLAYER_SPEED
	# delta is automatically included with move and slide
	move_and_slide()	

	# fire laser
	if Input.is_action_pressed("primary action") and can_shoot_laser:
		# store the 3 laser marker positions in an array
		var laser_markers = $LaserStartPositions.get_children()
		# randomly select 1 from the array 
		var selected_laser = laser_markers[randi() % laser_markers.size()] 
		print(selected_laser)		
		can_shoot_laser = false				
		$LaserReloadTimer.start()		
		laser.emit(selected_laser.global_position)
		
	 # throw grenade 
	if Input.is_action_pressed("secondary_action") and can_shoot_grenade:
		print("KABOOM!")
		can_shoot_grenade = false
		player_threw_grenade.emit()


func _on_timer_timeout():
	print("timer up!")
	can_shoot_laser = true
	pass # Replace with function body.


func _on_timer_2_timeout():
	print("You've been in the game for 5 seconds!")
	pass # Replace with function body.
