extends CharacterBody2D

var SPEED = 15.0
@export var escena_bales :PackedScene
func _ready():
	visible = false
	SPEED = 0
func _physics_process(delta):
	velocity.y = SPEED 
	move_and_slide()
	
var nova_bala
func dispara():
	var n_bales = 10
	var direccio = Vector2.RIGHT
	for i in range(n_bales):
		nova_bala= escena_bales.instantiate()
		Vides.Balespeons.add_child(nova_bala)
		nova_bala.global_position = global_position
		direccio = direccio.rotated(2*PI/n_bales)
		nova_bala.direccio = direccio


func _on_timer_timeout():
	dispara()
	


func _on_tempsentrada_timeout():
	SPEED = 15
	$Timer.start()
