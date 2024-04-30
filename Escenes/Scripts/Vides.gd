extends Node2D
var Vida = 3
var gameover:PackedScene = load("res://Escenes/has_perdut.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Vida==0:
		get_tree().change_scene_to_packed(gameover)
