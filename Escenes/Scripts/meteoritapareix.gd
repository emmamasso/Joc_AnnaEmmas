extends Node2D
var posiciox=randi_range(1,2)
var posiciomax=150
var posiciomin=20
var posicioxdefinitiva=randi_range(posiciomin,posiciomax)

# Called when the node enters the scene tree for the first time.
func _ready():
	position.y=randf_range(650,680)
	if posiciox==1:
		position.x=-200
	else:
		position.x=1100
	print(posiciomax)
	print(posiciomin)
	posiciomin=posiciomax+100
	posiciomax+=300

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if posiciomax>800:
		pass
	if position.x!=posicioxdefinitiva:
		if posiciox==1:
			position.x+=1
		else:
			position.x+=-1
