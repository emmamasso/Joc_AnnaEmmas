extends Area2D

@export var escena_explosió_lasers: PackedScene
var velocitat = 300
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y += -velocitat * delta


func _on_body_entered(body):
	get_tree().change_scene_to_packed(escena_explosió_lasers)
	body.explota()
	queue_free()
