extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	if Vides.coloravio==true:
		play("explosioverd")
	elif Vides.coloravio==false:
		play("explosioblau")




func _on_animation_finished():
	queue_free()
