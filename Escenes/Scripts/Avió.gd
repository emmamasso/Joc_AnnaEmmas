extends CharacterBody2D

var direccio := Vector2 (0,0)
const SPEED = 300.0
const JUMP_VELOCITY = -400.0
# Get the gravity from the project settings to be synced with RigidBody nodes.



func _physics_process(delta):

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("dreta", "esquerra")
	#if direction:
	#	velocity.x = direction * SPEED 
	#else:
	#velocity.x = move_toward(velocity.x, 0, SPEED)
	direccio = Vector2.ZERO
	if Input.is_action_pressed("dreta") and position.x <=849:
		direccio += Vector2(1,0)
	if Input.is_action_pressed("esquerra") and position.x >= 2:
		direccio += Vector2(-1,0)
		
	if Input.is_action_just_pressed("dispara"):
		dispara()
	#if position.x >= 2 and position.x <= 849:
	velocity = direccio * SPEED
	move_and_slide()
	#else:
	#	velocity.x = 0
	
var nou_laser
func dispara():
	if Vides.bales>0:
		var escena_laser:PackedScene= load("res://Escenes/escena_laser.tscn")
		nou_laser= escena_laser.instantiate()
		nou_laser.global_position = global_position
		%Lasers.add_child(nou_laser)
		Vides.bales+= -1
		$SorollLaser.play()
	else:
		pass
func explota():
	Vides.Vida += -1
	$Timer.start()
func _on_timer_timeout():
	self.modulate = Color(0.3,0.3,0.3)
	$Timer2.start()

func _on_timer_2_timeout():
	self.modulate = Color(1,1,1)
	$Timer.stop()
	$Timer2.stop()
	$Timer3.start()

func _on_timer_3_timeout():
	self.modulate = Color(0.3,0.3,0.3)
	$Timer3.stop()
	$Timer4.start()

func _on_timer_4_timeout():
	self.modulate = Color(1,1,1)
	$Timer4.stop()

