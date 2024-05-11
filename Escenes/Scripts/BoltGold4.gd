extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Vides.Vida ==1 or Vides.Vida ==2 or Vides.Vida == 0 or Vides.Vida ==3:
		$Llum3.energy = 0
		self.modulate = Color(0.25,0.25,0.25)
	else:
		$Llum3.energy = 1
		self.modulate = Color(1,1,1)
