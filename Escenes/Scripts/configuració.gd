extends Control
var pantallainici:PackedScene = load("res://Escenes/pantalla_inici.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	if Vides.musica==true:
		$Musica.button_pressed=true
	else:
		$Musica.button_pressed=false
	if Vides.so==true:
		$So.button_pressed=true
	else:
		$So.button_pressed=false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $Musica.button_pressed==true:
		Vides.musica=true
	else:
		Vides.musica=false
	if $So.button_pressed==true:
		Vides.so=true
	else:
		Vides.so=false


func _on_button_pressed():
	get_tree().change_scene_to_packed(pantallainici)
