extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	position= Vector2(randf_range(10,840),-20)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y+=3

func _on_body_entered(body):
	Vides.crear_escut=true
	queue_free()
