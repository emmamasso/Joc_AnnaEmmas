extends CanvasLayer
var pantallainici:PackedScene = load("res://Escenes/pantalla_inici.tscn")
var escenaprinicpal:PackedScene = load("res://Escenes/escena_principal.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	visible=false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("escape"):
		visible=true
		get_tree().paused=true

func _on_surt_pressed():
	get_tree().quit()

func _on_continua_pressed():
	visible=false
	get_tree().paused=false


func _on_pantalla_dinici_pressed():
	get_tree().change_scene_to_packed(pantallainici)


func _on_partidanova_pressed():
	get_tree().change_scene_to_packed(escenaprinicpal)
