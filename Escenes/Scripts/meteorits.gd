extends Node2D

var modulacions_dels_meteorits=0
var parells=0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

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
		queue_free()
	
