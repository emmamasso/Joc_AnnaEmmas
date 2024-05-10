extends Node2D
var posicio4=randi_range(650,750)

# Called when the node enters the scene tree for the first time.
func _ready():
	position.x = 1070


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if position.x != posicio4:
		position.x += -1
