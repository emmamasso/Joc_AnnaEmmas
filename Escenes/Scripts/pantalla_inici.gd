extends Control
var escenaprinicpal:PackedScene = load("res://Escenes/escena_principal.tscn")
var arrow = load("res://Imatges/cursor.png")
var configuracio:PackedScene = load("res://Escenes/configuració.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_custom_mouse_cursor(arrow)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("enter"):
		get_tree().change_scene_to_packed(escenaprinicpal)


func _on_configuraciobutton_pressed():
	get_tree().change_scene_to_packed(configuracio)
