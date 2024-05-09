extends Node2D

# get child node so we can rotate it later
@onready var Logo = $Logo

var test_array: Array[String] = ["Carly", "Lizey", "Immy"]
 
func _ready():
	Logo.rotation_degrees = 45	
	
	# print whats in the array
	print(test_array[1])
		
	

func _process(_delta):
	pass
