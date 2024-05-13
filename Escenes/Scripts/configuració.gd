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
	if Vides.coloravio==true:
		$verdabaix.visible=true
		$verdadalt.visible=true
		$verddreta.visible=true
		$verdesquerra.visible=true
		$blauabaix.visible=false
		$blauadalt.visible=false
		$blaudreta.visible=false
		$blauesquerra.visible=false
	if Vides.coloravio==false:
		$blauabaix.visible=true
		$blauadalt.visible=true
		$blaudreta.visible=true
		$blauesquerra.visible=true
		$verdabaix.visible=false
		$verdadalt.visible=false
		$verddreta.visible=false
		$verdesquerra.visible=false

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


func _on_avioblau_pressed():
	Vides.coloravio=false
	$blauabaix.visible=true
	$blauadalt.visible=true
	$blaudreta.visible=true
	$blauesquerra.visible=true
	$verdabaix.visible=false
	$verdadalt.visible=false
	$verddreta.visible=false
	$verdesquerra.visible=false


func _on_avioverd_pressed():
	Vides.coloravio=true
	$verdabaix.visible=true
	$verdadalt.visible=true
	$verddreta.visible=true
	$verdesquerra.visible=true
	$blauabaix.visible=false
	$blauadalt.visible=false
	$blaudreta.visible=false
	$blauesquerra.visible=false
