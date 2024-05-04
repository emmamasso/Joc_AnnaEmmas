extends Node2D
var powerup:PackedScene = load("res://Escenes/Scripts/power_up_municio.gd")

# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.wait_time=randf_range(1,25)
	$Timer.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	var nou_powerup= powerup.instantiate()
