extends Button
var pantalla_inici:PackedScene = load("res://Escenes/pantalla_inici.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	Vides.bales=10
	Vides.Vida=3
	Vides.nombrepeo=0
	Vides.nombrenobles=0
	get_tree().change_scene_to_packed(pantalla_inici)
