extends CharacterBody2D
var direccio:=Vector2 (1,0)
var velocitat_màxima:=100
var banda
func _process(delta):
	velocity = direccio.normalized()*velocitat_màxima
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
