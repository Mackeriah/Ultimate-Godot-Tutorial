extends Node2D


# this function can only capture the signal
func _on_gate_player_entered_gate(body):	
	print("player entered!!! ", body)


func _on_gate_player_left_gate(body):	
	print("player left :'( ", body)
