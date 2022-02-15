extends CanvasLayer

signal sceneChanged()
signal completeLevel()

onready var animationPlayer = $AnimationPlayer


func changeSceneBlack(path: PackedScene, delay = 0.5):
	yield(get_tree().create_timer(delay), "timeout")
	animationPlayer.play("FadeToBlack")
	yield(animationPlayer, "animation_finished")
	assert(get_tree().change_scene_to(path) == OK)
	animationPlayer.play_backwards("FadeToBlack")
	yield(animationPlayer, "animation_finished")
	emit_signal("sceneChanged")


func changeScene(path: PackedScene):
	get_tree().change_scene_to(path)


func completedLevel() -> void:
	emit_signal("completeLevel")

