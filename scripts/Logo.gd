extends Sprite2D

var logo_position = Vector2(0,0)
# could be written as var logo_position = Vector2 = Vector2(0,0) if you want to specify type
const SPEED = 100
var test_scale: int = 1
var test_rotation = 30
var rotate_count = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(100,100)
	# scale = Vector2(test_scale,test_scale) * 2

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	# move
	# position = position + Vector2(logo_speed, 0)
	position.x += SPEED * delta
	
	# increase scale
	# scale = scale + Vector2(1,1) *0.0001	
	
	#if position >= Vector2(400,400):
		#position = Vector2(250,250)
		#rotation_degrees = test_rotation
		#test_rotation += 10
		#rotate_count += 1
		#print(rotate_count)		
