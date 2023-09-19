extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_check_button_toggled(button_pressed):
	if $MarginContainer/VBoxContainer/CheckButton.button_pressed == true:
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_ENABLED)
	else:
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)
	pass # Replace with function body.


func _on_return_pressed():
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
	pass # Replace with function body.
