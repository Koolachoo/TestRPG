extends CharacterBody3D

@export var highlight_material: StandardMaterial3D

@onready var robot_ani = $GobotSkin
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var robot_meshinstance: MeshInstance3D = $GobotSkin/gobot/Armature/Skeleton3D/Gobot
@onready var robot_material: StandardMaterial3D = robot_meshinstance.mesh.surface_get_material(0)
# Get the gravity from the project settings to be synced with RigidBody nodes.

var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

var is_open: bool = false

func open() -> void:
	
	robot_ani.victory_sign()
	

func add_highlight() -> void:
	robot_meshinstance.set_surface_override_material(0, robot_material.duplicate())
	robot_meshinstance.get_surface_override_material(0).next_pass = highlight_material
	
func remove_highlight() -> void:
	robot_meshinstance.set_surface_override_material(0, null)

# Open the chest if unopened
func _on_interactable_interacted(_interactor: Interactor) -> void:
	if not is_open:
		remove_highlight()
		$Interactable.queue_free()
		open()


# Add white outline
func _on_interactable_focused(_interactor: Interactor) -> void:
	if not is_open:
		add_highlight()

# Remove white outline
func _on_interactable_unfocused(_interactor: Interactor) -> void:
	remove_highlight()

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y -= gravity * delta

	
