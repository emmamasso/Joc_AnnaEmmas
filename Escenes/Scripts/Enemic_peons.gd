extends CharacterBody2D
var direccio:=Vector2 (1,0)
var velocitat_màxima:=100
var banda
var bala:PackedScene = load("res://Escenes/bales_peons.tscn")

func _ready():
	$TimerDisparar.wait_time = randf_range(1, 10)
	$TimerDisparar.start()
func _process(delta):
	velocity= direccio.normalized()*velocitat_màxima
	move_and_slide()
func canvia_direcció_dreta():
	direccio = Vector2(0,0.825)
	banda = "dreta"
	$Timer.start()
func canvia_direcció_esquerra():
	direccio = Vector2(0,0.825)
	banda = "esquerra"
	$Timer.start()

func _on_timer_timeout():
	if banda == "dreta":
		direccio = Vector2(1,0)
	else:
		direccio = Vector2(-1,0)
func explota():
	queue_free()

func disparar_bala():
	var nova_bala = bala.instantiate()
	Vides.Balespeons.add_child(nova_bala)
	nova_bala.global_position = global_position
	if Vides.so==true:
		$SorollBala.play()


func _on_timer_disparar_timeout():
	disparar_bala()
	$TimerDisparar.wait_time = randf_range(3,15)
