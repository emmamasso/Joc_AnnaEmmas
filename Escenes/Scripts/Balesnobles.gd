extends Area2D
var velocitat_maxima = 900
var direccio:=Vector2 (0,1)
var viu = true
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if viu:
		position.y += velocitat_maxima*delta

func _on_body_entered(body):
	body.explota()
	explota()
	

func explota():
	viu = false
	$AnimatedSprite2D.play("Final")


func _on_animated_sprite_2d_animation_finished():
	queue_free()
