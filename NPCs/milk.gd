extends CharacterBody3D

@onready var milkbod = $Hex
@onready var player = $"../Sophia"
@export var dialogue_resource: DialogueResource
@export var dialogue_start: String = "start"

const Balloon = preload("res://Dialogue/balloon.tscn")
const chat = preload("res://Dialogue/test.dialogue")
func speak() ->void:
	var balloon: Node = Balloon.instantiate()
	get_tree().current_scene.add_child(balloon)
	balloon.start(dialogue_resource, dialogue_start)
func turn():
	print("Milk")
	look_at(player.global_transform.origin, Vector3.UP)
	rotate_y(deg_to_rad(180))

func _physics_process(delta: float) -> void:
	pass


func _on_interactable_interacted(interactor: Interactor) -> void:
	turn()
	speak()
