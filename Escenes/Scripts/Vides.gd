extends Node2D
var Vida = 3
var Balespeons:Node2D
var posicio_disparar1 = 40
var posicio_disparar2 = 42
var game_over:PackedScene = load("res://Escenes/has_perdut.tscn")
func _process(delta):
	posicio_disparar2 = posicio_disparar1 + 2
	if posicio_disparar1 >= 825:
		posicio_disparar1 += -825
	if Vida==0:
		get_tree().change_scene_to_packed(game_over)
