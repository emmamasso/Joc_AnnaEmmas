extends Area2D
var velocitat_maxima = 700
var direccio:=Vector2 (0,1)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y += velocitat_maxima*delta

func _on_body_entered(body):
	body.explota()
