extends Node2D
var Vida = 3
var Balespeons:Node2D
var Balesnobles: Node2D
var posicio_disparar1 = 40
var posicio_disparar2 = 42
var bales=10
func _process(delta):
	posicio_disparar2 = posicio_disparar1 + 2
	if posicio_disparar1 >= 825:
		posicio_disparar1 += -825
	
