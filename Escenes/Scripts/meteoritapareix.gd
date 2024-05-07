extends Node2D
var posiciox=randi_range(1,2)
var posicioxdefinitiva=randi_range(30,800)

# Called when the node enters the scene tree for the first time.
func _ready():
	position.y=randf_range(550,700)
	if posiciox==1:
		position.x=-200
	else:
		position.x=1100
	print(posiciox)
	print(posicioxdefinitiva)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if position.x!=posicioxdefinitiva:
		if posiciox==1:
			position.x+=1
		else:
			position.x+=-1
