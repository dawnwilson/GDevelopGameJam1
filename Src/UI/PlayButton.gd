extends Button

onready var nextScene = preload("res://Src/Levels/Level01.tscn")



func _on_PlayButton_pressed() -> void:
	print("Clicked Play Button")
	SceneChanger.changeSceneBlack(nextScene)
