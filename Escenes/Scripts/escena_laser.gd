extends Area2D

@export var escena_explosió_lasers: PackedScene
var velocitat = 800
# Called when the node enters the scene tree for the first time.
func _ready():
	if Vides.coloravio==true:
		$AnimatedSprite2D2.play("laser_verd")
	elif Vides.coloravio==false:
		$AnimatedSprite2D2.play("laser_blau")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y += -velocitat * delta
func _on_body_entered(body):
	body.explota()
	explota()
	queue_free()
func explota():
	var nova_explosio = escena_explosió_lasers.instantiate()
	get_parent().add_child(nova_explosio)
	nova_explosio.global_position = global_position



func _on_area_entered(area):
	var nova_explosio = escena_explosió_lasers.instantiate()
	get_parent().add_child(nova_explosio)
	nova_explosio.global_position = global_position
	queue_free()


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
