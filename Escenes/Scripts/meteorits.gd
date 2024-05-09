extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Meteorit1.position.x=randi_range(75,175)
	$Meteorit2.position.x=randi_range(250,350)
	$Meteorit3.position.x=randi_range(425,525)
	$meteorit4.position.x=randi_range(600,750)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
