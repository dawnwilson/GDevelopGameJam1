extends Area2D

onready var normalImage = preload("res://Assets/Cursor_Normal.png")
onready var hoverImage = preload("res://Assets/Cursor_Hover.png")

export var normalColor : Color
export var hoverColor : Color


func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)


func _process(delta: float) -> void:
	followMouse()
	
	var space = get_world_2d().direct_space_state
	var results = space.intersect_ray(position, position, [], 2147483647, true, false)
	if results.empty():
		$Sprite.texture = normalImage
		$Sprite.modulate = normalColor
	else:
		$Sprite.texture = hoverImage
		$Sprite.modulate = hoverColor


func followMouse():
	position = get_global_mouse_position()
