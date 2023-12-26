extends CharacterBody3D

@onready var sophiabody = $SophiaSkin
@onready var sophia = $sophia
const SPEED = 5.0
const JUMP_VELOCITY = 4.5

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")


func _physics_process(delta):
	# start test dialogue
	#if Input.is_action_just_pressed("accept"):
		#DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/main.dialogue"), "start")
		#return
	
	# Add the gravity.
	if not is_on_floor():
		velocity.y -= gravity * delta

	# Handle jump.
	var is_jumping:= Input.is_action_just_pressed("jump") and is_on_floor()
	if is_jumping:
		velocity.y = JUMP_VELOCITY

	#if is_on_floor() and not is_jumping:
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
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
	
	if input_dir.is_zero_approx():
		sophiabody.idle()
	move_and_slide()
