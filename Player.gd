extends CharacterBody3D


@export var speed: float = 6.0
@export var jumpVelocity: float = 4.5
@export var transitionSpeed: float =.01

#@export var animationTree: AnimationTree
#@export var locomotionBlendPath: String

#@export_subgroup("Properties")
#@export var movement_speed = 250
#@export var jump_strength = 7

#@onready var animation_tree = %sophia_skin
#@onready var state_machine : AnimationNodeStateMachinePlayback = animation_tree.get("parameters/StateMachine/playback")
#@onready var move_tilt_path : String = "parameters/StateMachine/Move/tilt/add_amount"


# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

var currentInput: Vector2
var currentVelocity: Vector2



#@onready var view =$View
@onready var _animated_sprite = $AnimatedSprite3D
@onready var animation = $Player/AnimationPlayer

#func _ready():
	#Input.mouse_mode = 2
#
#func _input(event):
	#if event is InputEventMouseMotion:
		#view.rotation.x -= deg_to_rad(event.relative.y * 1)
		#view.rotation.x = clamp(view.rotation.x, deg_to_rad(-90), deg_to_rad(90))
		#rotation.y -= deg_to_rad(event.relative.x * 1)

func _physics_process(delta):
	

	
	#falling and respawn
	if position.y < -10:
		get_tree().reload_current_scene()
	
	# Add the gravity.
	if not is_on_floor():
		velocity.y -= gravity * delta
		

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jumpVelocity
		

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir = Input.get_vector("move_left", "move_right", "move_forward", "move_backward")
	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * speed
		velocity.z = direction.z * speed
		
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
		velocity.z = move_toward(velocity.z, 0, speed)
	
	#if direction and is_on_floor():
		#move()

	#elif is_on_floor():
		#animation.play("Idle")

	
	#if Input.is_action_just_pressed("jump") and is_on_floor():
		#animation.play("Jump")

	move_and_slide()

func _process(_delta):
	# Move left
	if Input.is_action_pressed("move_left"):
		_animated_sprite.play("WalkLeft")
	else:
		_animated_sprite.stop()
		
	# Move Right
	if Input.is_action_pressed("move_right"):
		_animated_sprite.play("WalkRight")
	else:
		_animated_sprite.stop()
	# Move Down
	if Input.is_action_pressed("move_forward"):
		_animated_sprite.play("WalkUp")
	else:
		_animated_sprite.stop()
		
	# Move Up
	if Input.is_action_pressed("move_backward"):
		_animated_sprite.play("WalkDown")
	else:
		_animated_sprite.stop()


