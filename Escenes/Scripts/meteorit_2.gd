extends Node2D
var posicio2=randi_range(250,350)

# Called when the node enters the scene tree for the first time.
func _ready():
	position.x=-100


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if position.x != posicio2:
		position.x += 1
