extends Sprite



func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)


func _process(delta: float) -> void:
	followMouse()


func followMouse():
	position = get_global_mouse_position()
