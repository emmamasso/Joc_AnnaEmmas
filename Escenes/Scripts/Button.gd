extends Button
var INSTRUCCIONS:PackedScene = load("res://Escenes/instruccions.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	get_tree().change_scene_to_packed(INSTRUCCIONS)


func _on_button_2_pressed():
	pass # Replace with function body.
