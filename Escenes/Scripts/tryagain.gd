extends Button
var escenaprinicpal:PackedScene = load("res://Escenes/escena_principal.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	Vides.Vida=3
	Vides.bales=15
	Vides.nombrepeo=0
	Vides.nombrenobles=0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("enter"):
		get_tree().change_scene_to_packed(escenaprinicpal)
