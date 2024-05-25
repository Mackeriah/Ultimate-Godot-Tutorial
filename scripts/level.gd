extends Node2D


# this function can only capture the signal
func _on_gate_player_entered_gate(body):	
	print("player entered!!! ", body)


func _on_gate_player_left_gate(body):	
	print("player left :'( ", body)


func _on_player_player_fired_laser():
	print("laser from level")
	pass # Replace with function body.


func _on_player_player_threw_grenade():
	print("grenade from level")
	pass # Replace with function body.
