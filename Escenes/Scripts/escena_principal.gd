extends Node2D

var EscenaPeons: PackedScene = load("res://Escenes/escena_peons.tscn")
var game_over:PackedScene = load("res://Escenes/has_perdut.tscn")
var nou_peo
var posicio_inicial_peo = Vector2(41, 35)
var powerupmunicio:PackedScene = load("res://Escenes/power_up_municio.tscn")
var powerupvida:PackedScene = load("res://Escenes/power_up_vida.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	$Temps.start()
	Vides.Vida=3
	$TimerPowerUpMunicio.wait_time=randf_range(10,20)
	$TimerPowerUpMunicio.start()
	$TimerPowerUpVides.wait_time=randf_range(20,30)
	$TimerPowerUpVides.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Vides.Vida==0:
		Vides.Vida=3
		get_tree().change_scene_to_packed(game_over)

func _on_timer_timeout():
	nou_peo = EscenaPeons.instantiate()
	$Temps.start()
	nou_peo.position = posicio_inicial_peo
	%Peons.add_child(nou_peo)

func _on_timer_power_up_municio_timeout():
	var nou_powerup= powerupmunicio.instantiate()
	add_child(nou_powerup)
	$TimerPowerUpMunicio.wait_time=randf_range(5,20)
	$TimerPowerUpMunicio.start()
	
func _on_timer_power_up_vides_timeout():
	var nova_vida= powerupvida.instantiate()
	add_child(nova_vida)
	$TimerPowerUpVides.wait_time=randf_range(10,20)
	$TimerPowerUpVides.start()
