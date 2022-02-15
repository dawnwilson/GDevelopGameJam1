extends Area2D

signal levelComplete



func _on_Goal_body_entered(body: Node) -> void:
	if body.held:
		$Timer.stop()
		return
	$Timer.start()


func _on_Goal_body_exited(body: Node) -> void:
	$Timer.stop()


func _on_Timer_timeout() -> void:
	emit_signal("levelComplete")
