extends CharacterBody3D

@onready var sophiabody = $SophiaSkin
var SPEED = 5.0
const JUMP_VELOCITY = 4.5

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

func _unhandled_input(_event: InputEvent) -> void:
	var input_dir = Input.get_vector("move_left", "move_right", "move_forward", "move_backward")
	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
		sophiabody.look_at(position + -direction)
		sophiabody.move()
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)
	
	
	var is_jumping:= Input.is_action_just_pressed("jump") and is_on_floor()
	var grounded:= input_dir.is_zero_approx() and is_on_floor()
	var airborne:= direction or input_dir.is_zero_approx()
	

	
	if is_jumping:
		velocity.y = JUMP_VELOCITY
	
	if grounded:
		sophiabody.idle()
	#run button
	if Input.is_action_just_pressed("run"):
		SPEED = 9.0
	elif Input.is_action_just_released("run"):
		SPEED = 5.0
	if not is_on_floor() and not is_jumping and airborne:
		sophiabody.jump()
	#elif gravity and direction and not is_on_floor():
		#sophiabody.fall()
	if JUMP_VELOCITY > 4.5:
		sophiabody.fall()
		
func _physics_process(delta):
	#falling and respawn
	if position.y < -10:
		get_tree().reload_current_scene()
	
	# Add the gravity.
	if not is_on_floor():
		velocity.y -= gravity * delta
	move_and_slide()


