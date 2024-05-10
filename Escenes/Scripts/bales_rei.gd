extends Area2D

var velocitat = 800
var direccio : Vector2 = Vector2.RIGHT
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += direccio * velocitat * delta
	
func _on_body_entered(body):
	body.explota()


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
