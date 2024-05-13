extends Sprite2D
var avioverd = load("res://Imatges/Avió.png")
var avioblau = load("res://Imatges/playerShip1_blue.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	if Vides.coloravio==true:
		texture =avioverd
	elif Vides.coloravio==false:
		texture = avioblau


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
