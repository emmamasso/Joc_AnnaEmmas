extends CharacterBody2D
var has_guanyat : PackedScene = load ("res://Escenes/has_guanyat.tscn")
var SPEED = 0
var vidarei = 20
@export var escena_bales :PackedScene
var x = 1
func _ready():
	SPEED = 0
	$Timer.wait_time=775
	$Timer.start()
	vidarei = 20
	$musica.play()
func _physics_process(delta):
	velocity.y = SPEED 
	move_and_slide()
	if vidarei ==0:
		queue_free()
		get_tree().change_scene_to_packed(has_guanyat)
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
	vidarei += -1
	self.modulate = Color(x,x,x)
	x += -0.05

func _on_timer_timeout():
	dispara()
	print("done")
	$Timer.wait_time=randf_range(2,18)
	$Timer.start()


func _on_tempsentrada_timeout():
	SPEED = 5
	$Tempsentrada.stop()
	$Timer.wait_time=40
	$Timer.start()


func _on_visible_on_screen_notifier_2d_screen_entered():
	$musica.set_volume_db(10)
