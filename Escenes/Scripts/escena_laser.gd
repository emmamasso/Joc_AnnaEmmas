extends Area2D

@export var escena_explosió_lasers: PackedScene
var velocitat = 800
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y += -velocitat * delta


func _on_body_entered(body):
	var nova_explosio = escena_explosió_lasers.instantiate()
	get_parent().add_child(nova_explosio)
	nova_explosio.global_position = global_position
	body.explota()
	queue_free()
