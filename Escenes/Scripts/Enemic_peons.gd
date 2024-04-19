extends CharacterBody2D
var direccio:=Vector2 (1,0)
var velocitat_màxima:=100

func _process(delta):
	velocity = direccio.normalized()*velocitat_màxima
	move_and_slide()
	
func canvia_direcció_dreta():
		direccio = Vector2 (1,0)
func canvia_direcció_esquerra():
	direccio = Vector2 (-1,0)
