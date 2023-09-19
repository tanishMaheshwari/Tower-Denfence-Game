extends Node

@export var MaxHealth = 0.0
@export var CurrentHealth = 0.0
@export var regen = 0.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	CurrentHealth += regen * delta
	pass


func getHealth():
	return CurrentHealth

func heal(n = 0):
	CurrentHealth = max(CurrentHealth+n, MaxHealth)

func setRegen(n = 0, tim = 0):
	regen = n	
	var timer = Timer.new()
	add_child(timer)
	timer.wait_time = tim
	timer.one_shot = true
	timer.start()
	timer.connect("timeout", self, "_on_timer_timeout")

func _on_timer_timeout() -> void:
	regen = 0;
	queue_free()
