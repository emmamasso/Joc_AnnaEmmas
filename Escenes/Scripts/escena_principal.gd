extends Node2D
var EscenaPeons: PackedScene = load("res://Escenes/escena_peons.tscn")
var nou_peo
# Called when the node enters the scene tree for the first time.
func _ready():
	"$Timer.start()"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_timer_timeout():
	nou_peo = EscenaPeons.instantiate()
	$Timer.start()
