extends Node2D

# preload the laser scene
var laser_scene: PackedScene = preload("res://scenes/projectiles/laser.tscn")

# this function can only capture the signal
func _on_gate_player_entered_gate(body):	
	print("player entered!!! ", body)


func _on_player_laser(pos):
	# instantiate an instance of the laser scene
	var laser = laser_scene.instantiate()
	laser.position = pos
	# add scene to the node tree
	$Projectiles.add_child(laser)
	


func _on_player_player_threw_grenade():
	print("grenade from level")
	pass # Replace with function body.


