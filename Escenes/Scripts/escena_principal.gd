extends Node2D

var EscenaPeons: PackedScene = load("res://Escenes/escena_peons.tscn")
var game_over:PackedScene = load("res://Escenes/has_perdut.tscn")
var nou_peo
var posicio_inicial_peo = Vector2(41, 35)
var powerupmunicio:PackedScene = load("res://Escenes/power_up_municio.tscn")
var powerupvida:PackedScene = load("res://Escenes/power_up_vida.tscn")
var EscenaNobles: PackedScene = load("res://Escenes/nobles.tscn")
var posicio_inicial_noble = Vector2(170,175)
var meteorits:PackedScene = load("res://Escenes/meteorits.tscn")
var powerupescut:PackedScene = load("res://Escenes/power_up_escut.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	$Inicijoc.start()
	$Temps.wait_time = 0
	Vides.Vida=5
	Vides.bales=15
	Vides.nombrenobles=0
	Vides.nombrepeo=0
	$TimerPowerUpMunicio.wait_time=randf_range(10,15)
	$TimerPowerUpMunicio.start()
	$TimerPowerUpVides.wait_time=randf_range(15,25)
	$TimerPowerUpVides.start()
	$MeteoritNou.wait_time=randf_range(50,60)
	$MeteoritNou.start()
	$escut.wait_time=randf_range(50,70)
	$escut.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Vides.Vida==0:
		Vides.Vida=5
		get_tree().change_scene_to_packed(game_over)

func _on_timer_timeout():
	if Vides.nombrepeo<40:
		nou_peo = EscenaPeons.instantiate()
		nou_peo.position = posicio_inicial_peo
		%Peons.add_child(nou_peo)
		Vides.nombrepeo += 1
		$Temps.start()
	elif Vides.nombrepeo==40:
		$Temps.wait_time = 1
		$Temps.start()
		Vides.nombrepeo += 1
	elif Vides.nombrenobles<20 and Vides.nombrepeo>40:
		var nou_noble = EscenaNobles.instantiate()
		nou_noble.position = posicio_inicial_noble
		%Nobles.add_child(nou_noble)
		Vides.nombrenobles += 1
		$Temps.wait_time = 1.25
		$Temps.start() 
	elif Vides.nombrenobles ==20:
		$rei/Tempsentrada.start()
		Vides.nombrenobles += 1 

func _on_timer_power_up_municio_timeout():
	var nou_powerup= powerupmunicio.instantiate()
	add_child(nou_powerup)
	$TimerPowerUpMunicio.wait_time=randf_range(3,10)
	$TimerPowerUpMunicio.start()
	
func _on_timer_power_up_vides_timeout():
	var nova_vida= powerupvida.instantiate()
	add_child(nova_vida)
	$TimerPowerUpVides.wait_time=randf_range(10,15)
	$TimerPowerUpVides.start()

func _on_meteorit_nou_timeout():
	$meteorits.desapareixen()
	var nou_meteorit= meteorits.instantiate()
	add_child(nou_meteorit)
	$MeteoritNou.stop()

func _on_inicijoc_timeout():
	$Temps.wait_time = 1.25
	$Temps.start()


func _on_escut_timeout():
	var nou_powerupescut = powerupescut.instantiate()
	add_child(nou_powerupescut)
	$escut.wait_time=randf_range(30,45)
	$escut.start()
