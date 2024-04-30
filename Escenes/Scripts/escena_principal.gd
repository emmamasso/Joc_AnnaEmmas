extends Node2D
var EscenaPeons: PackedScene = load("res://Escenes/escena_peons.tscn")
var nou_peo
var posicio_inicial_peo = Vector2(41, 35)
# Called when the node enters the scene tree for the first time.
func _ready():
	$Temps.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_timer_timeout():
	nou_peo = EscenaPeons.instantiate()
	$Temps.start()
	nou_peo.position = posicio_inicial_peo
	%Peons.add_child(nou_peo)
	Vides.posicio_disparar1 += (randf())*100 
