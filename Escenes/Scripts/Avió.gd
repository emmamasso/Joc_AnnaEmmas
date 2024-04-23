extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.



func _physics_process(delta):

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("dreta", "esquerra")
	if direction:
		velocity.x = direction * SPEED 
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	if Input.is_action_pressed("dispara"):
		dispara()
		
	move_and_slide()

var nou_laser
func dispara():
	var escena_laser:PackedScene= load("res://Escenes/escena_laser.tscn")
	nou_laser= escena_laser.instantiate()
	nou_laser.global_position = global_position
	%Lasers.add_child(nou_laser)
	 
	
