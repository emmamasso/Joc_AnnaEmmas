extends Node2D
var posicio1=randi_range(50,150)
var posicio2=randi_range(250,350)
var posicio3=randi_range(450,550)
var posicio4=randi_range(650,750)
var modulacions_dels_meteorits=0
var parells=0

# Called when the node enters the scene tree for the first time.
func _ready():
	$Meteorit1.position.x=-100
	$Meteorit2.position.x=-220
	$Meteorit3.position.x=1000
	$meteorit4.position.x=870
	position.y=-30
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $Meteorit2.position.x!=posicio2:
		$Meteorit2.position.x+=1
	else:
		if $Meteorit1.position.x!=posicio1:
			$Meteorit1.position.x+=1
	if $Meteorit3.position.x!=posicio3:
		$Meteorit3.position.x+=-1
	else:
		if $meteorit4.position.x!=posicio4:
			$meteorit4.position.x+=-1

func desapareixen():
	visible=false
	$Timer.wait_time=0.08
	$Timer.start()
	modulacions_dels_meteorits+=1
	parells+=1


func _on_timer_timeout():
	if parells==1:
		visible=true
		parells=0
	else:
		visible=false
		parells=1
	modulacions_dels_meteorits+=1
	$Timer.wait_time=0.08
	$Timer.start()
	if modulacions_dels_meteorits==10:
		modulacions_dels_meteorits=0
		for meteorit in get_children():
			meteorit.queue_free()
	
