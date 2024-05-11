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
	velocitat_maxima = 0
	body.explota()
	explota()
	

func _on_space_missiles_013_animation_finished():
	queue_free()

func explota():
	viu = false
	$SpaceMissiles013.play("Final")


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
	


func _on_area_entered(area):
	velocitat_maxima = 0
	area.explota()
	explota()
