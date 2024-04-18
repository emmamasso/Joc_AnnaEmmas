extends CharacterBody2D
var direccio:=Vector2 (0,0)
var velocitat_màxima:=100

func _process(delta):
	direccio = Vector2 (1,0)
	velocity = direccio.normalized()*velocitat_màxima
	move_and_slide()
