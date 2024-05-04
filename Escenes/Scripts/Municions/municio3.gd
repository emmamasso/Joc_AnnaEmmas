extends ColorRect


# Called when the node enters the scene tree for the first time.
func _ready():
	color=Color(0,255,0,255)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Vides.bales<=3:
		color = Color(255,0,0,255)
	else:
		color=Color(0,255,0,255)
