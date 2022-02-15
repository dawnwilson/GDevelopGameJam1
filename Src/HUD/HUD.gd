extends Control



func _on_Counter_timeout() -> void:
	Global.setSeconds(1)
	if Global.getSeconds() == 60:
		Global.setMinutes(1)
		Global.setSeconds(0)
	updateLabel()


func updateLabel() -> void:
	$Label.text = "%02d:%02d" % [Global.getMinutes(), Global.getSeconds()]
