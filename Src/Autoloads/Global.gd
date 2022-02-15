extends Node

var levelTimes : Dictionary = {1: [0, 0], 2: [0, 0], 3: [0, 0], 4: [0, 0]}
var minutes : int = 00 setget setMinutes, getMinutes
var seconds : int = 00 setget setSeconds, getSeconds



func setMinutes(num : int) -> void:
	minutes += num


func getMinutes() -> int:
	return minutes


func setSeconds(num : int) -> void:
	seconds += num


func getSeconds() -> int:
	return seconds


func submitFinishedLevelTime(lvl : int) -> void:
	levelTimes[lvl][0] = getMinutes()
	levelTimes[lvl][1] = getSeconds()
