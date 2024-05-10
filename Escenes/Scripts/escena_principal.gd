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


# Called when the node enters the scene tree for the first time.
func _ready():
	$Inicijoc.start()
	$Temps.wait_time = 0
	Vides.Vida=3
	Vides.bales=15
	Vides.nombrenobles=0
	Vides.nombrepeo=0
	$TimerPowerUpMunicio.wait_time=randf_range(10,15)
	$TimerPowerUpMunicio.start()
	$TimerPowerUpVides.wait_time=randf_range(15,25)
	$TimerPowerUpVides.start()
	$MeteoritNou.wait_time=randf_range(70,80)
	$MeteoritNou.start()
	$musica.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Vides.Vida==0:
		Vides.Vida=3
		get_tree().change_scene_to_packed(game_over)

func _on_timer_timeout():
	if Vides.nombrepeo<20:
		nou_peo = EscenaPeons.instantiate()
		$Temps.start()
		nou_peo.position = posicio_inicial_peo
		%Peons.add_child(nou_peo)
		Vides.nombrepeo += 1
	elif Vides.nombrepeo==20:
		$Temps.wait_time = 0.5
		$Temps.start()
		Vides.nombrepeo += 1
	elif Vides.nombrenobles<10 and Vides.nombrepeo>20:
		var nou_noble = EscenaNobles.instantiate()
		$Temps.wait_time = 1.25
		$Temps.start() 
		nou_noble.position = posicio_inicial_noble
		%Nobles.add_child(nou_noble)
		Vides.nombrenobles += 1

func _on_timer_power_up_municio_timeout():
	var nou_powerup= powerupmunicio.instantiate()
	add_child(nou_powerup)
	$TimerPowerUpMunicio.wait_time=randf_range(5,15)
	$TimerPowerUpMunicio.start()
	
func _on_timer_power_up_vides_timeout():
	var nova_vida= powerupvida.instantiate()
	add_child(nova_vida)
	$TimerPowerUpVides.wait_time=randf_range(10,15)
	$TimerPowerUpVides.start()


func _on_musica_finished():
	$musica.play()
	

func _on_meteorit_nou_timeout():
	$meteorits.desapareixen()
	var nou_meteorit= meteorits.instantiate()
	add_child(nou_meteorit)
	$MeteoritNou.stop()

func _on_inicijoc_timeout():
	$Temps.start()
	$Temps.wait_time = 1.25
