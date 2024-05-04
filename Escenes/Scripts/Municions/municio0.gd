extends ColorRect


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Vides.bales==0:
		color = Color(180,28,0,255)
	else:
		color=Color(79,214,88,255)
