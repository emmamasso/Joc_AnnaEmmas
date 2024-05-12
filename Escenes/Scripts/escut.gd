extends Area2D
var parells=0
var n_pampallugues=0

# Called when the node enters the scene tree for the first time.
func _ready():
	$animacioescut.play("escut")
	if Vides.so==true:
		$shieldup.play()
	$Timer.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_timer_timeout():
	$animacioescut.visible=false
	$pampallugues.start()

func _on_pampallugues_timeout():
	if parells==0:
		$animacioescut.visible=true
		parells=1
		n_pampallugues+=1
		$pampallugues.start()
	else:
		$animacioescut.visible=false
		parells=0
		n_pampallugues+=1
		$pampallugues.start()
	if n_pampallugues==15:
		$pampallugues.stop()
		if Vides.so==true:
			$shield_down.play()
		queue_free()
