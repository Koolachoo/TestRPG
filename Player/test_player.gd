extends CharacterBody3D

@onready var playmove = $AnimatedSprite3D
@export var SPEED = 5.0
const JUMP_VELOCITY = 4.5

func animation():
	if Input.is_action_just_pressed("move_left"):
		playmove.play("left walk")
	elif Input.is_action_just_released("move_left"):
		playmove.stop()
	if Input.is_action_just_pressed("move_right"):
		playmove.play("right walk")
	elif Input.is_action_just_released("move_right"):
		playmove.stop()
	if Input.is_action_just_pressed("move_forward"):
		playmove.play("back walk")
	elif Input.is_action_just_released("move_forward"):
		playmove.stop()
	if Input.is_action_just_pressed("move_backward"):
		playmove.play("front walk")
	elif Input.is_action_just_released("move_backward"):
		playmove.stop()
func _physics_process(delta):
	animation()
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	move_and_slide()