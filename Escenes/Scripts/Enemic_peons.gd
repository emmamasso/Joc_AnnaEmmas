extends CharacterBody2D
var direccio:=Vector2 (1,0)
var velocitat_màxima:=100
var banda
var bala:PackedScene = load("res://Escenes/bales_peons.tscn")
func _ready():
	$Tempsperdisparar.start()
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


func _on_tempsperdisparar_timeout():
	$Tempsperdisparar.start()
	var nova_bala = bala.instantiate()
	nova_bala.global_position = global_position
	%Balespeons.add_child(nova_bala)
