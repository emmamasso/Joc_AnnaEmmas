extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Vides.Vida ==1 or Vides.Vida ==2 or Vides.Vida == 0:
		$PointLight2D. modulate(48,48, 48)
