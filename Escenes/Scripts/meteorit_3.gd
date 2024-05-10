extends Node2D
var posicio3=randi_range(450,550)

# Called when the node enters the scene tree for the first time.
func _ready():
	position.x = 870


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if position.x != posicio3:
		position.x += -1
