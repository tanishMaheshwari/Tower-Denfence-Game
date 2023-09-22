extends Camera2D

var dragging = false
@export var cam_speed = 1.0
@export var zoom_speed = 0.05
@export var zoom_max = 1.5
@export var zoom_min = 0.5



var in_area = false

func _input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and in_area:
		if not dragging and event.pressed:
			dragging = true
		if dragging and not event.pressed:
			dragging = false
	if event is InputEventMouseMotion and dragging and in_area:
		$".".position.x += (- $".".position.x + event.position.x) * zoom.x
		$".".position.y += (- $".".position.y + event.position.y) * zoom.y
		print(zoom)
		
	elif event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_WHEEL_UP:
		zoom = Vector2(min(zoom.x + zoom_speed, zoom_max), min(zoom.y + zoom_speed, zoom_max))
	elif event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_WHEEL_DOWN:
		zoom = Vector2(max(zoom.x - zoom_speed, zoom_min), max(zoom.y - zoom_speed, zoom_min))

func _process(_delta):
	pass


func _on_area_2d_mouse_entered():
	in_area	= true
	pass # Replace with function body.


func _on_area_2d_mouse_exited():
	in_area = false
	pass # Replace with function body.
