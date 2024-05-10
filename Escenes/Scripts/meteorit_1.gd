extends Node2D
var posicio1=randi_range(50,150)

# Called when the node enters the scene tree for the first time.
func _ready():
	position.x=-300


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if position.x != posicio1:
		position.x += 1
