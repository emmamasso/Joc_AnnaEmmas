extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Meteorit1.position.x=-100
	$Meteorit2.position.x=-100
	$Meteorit3.position.x=870
	$meteorit4.position.x=870
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var posicio1=randi_range(50,150)
	var posicio2=randi_range(250,350)
	var posicio3=randi_range(450,550)
	var posicio4=randi_range(650,750)
	if $Meteorit2.position.x!=posicio2:
		$Meteorit2.position.x+=1
	else:
		if $Meteorit1.position.x!=posicio1:
			$Meteorit1.position.x+=1
	if $meteorit4.position.x!=posicio4:
		$meteorit4.position.x+=-1
	else:
		if $Meteorit3.position.x!=posicio3:
			$Meteorit3.position.x+=-1
		
		
