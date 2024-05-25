extends StaticBody2D

# create custom signal so that level scene knows when player has entered gate
signal player_entered_gate(body)
signal player_left_gate(body)


# emit signal on player enter (Which is captured by level)
func _on_area_2d_body_entered(body):
	player_entered_gate.emit(body)
	

# emit signal on player leaving (Which is captured by level)
func _on_area_2d_body_exited(body):
	player_left_gate.emit(body)
