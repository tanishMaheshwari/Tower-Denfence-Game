extends Node2D


@onready var path = preload("res://Utility/game_1_path.tscn")

func _on_timer_timeout():
	var tempPath = path.instantiate()
	add_child(tempPath)
