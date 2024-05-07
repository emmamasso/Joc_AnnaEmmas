extends CharacterBody2D
var direccio:=Vector2 (0,0)
var velocitat_màxima:=100


func _ready():
	pass
	
func _process(delta):
	velocity= direccio.normalized()*velocitat_màxima
	move_and_slide()


