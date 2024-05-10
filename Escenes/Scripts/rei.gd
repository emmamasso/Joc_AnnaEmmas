extends CharacterBody2D

var SPEED = 0
@export var escena_bales :PackedScene
func _ready():
	SPEED = 0
	$Timer.wait_time=400
	$Timer.start()
	
func _physics_process(delta):
	velocity.y = SPEED 
	move_and_slide()
	if position.y == 300:
		print("done")
		$Timer.wait_time=20
		$Timer.start
	
var nova_bala

func dispara():
	var n_bales = 10
	var direccio = Vector2.RIGHT
	for i in range(n_bales):
		nova_bala= escena_bales.instantiate()
		Vides.Balespeons.add_child(nova_bala)
		nova_bala.global_position = global_position
		nova_bala.rotation=2*PI/n_bales
		direccio = direccio.rotated(2*PI/n_bales)
		nova_bala.direccio = direccio

func explota():
	pass

func _on_timer_timeout():
	dispara()
	$Timer.wait_time=randf_range(30,70)
	$Timer.start()


func _on_tempsentrada_timeout():
	SPEED = 8
	$Tempsentrada.stop()
