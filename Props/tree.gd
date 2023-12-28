extends RigidBody3D

const Balloon = preload("res://Dialogue/balloon.tscn")

@export var dialogue_resource: DialogueResource
@export var dialogue_start: String = "start"

var speaking: bool = false

func action() ->void:
	speaking = true
	if speaking:
		var balloon: Node = Balloon.instantiate()
		get_tree().current_scene.add_child(balloon)
		balloon.start(dialogue_resource, dialogue_start)
		speaking = false
	

func _on_interactable_focused(interactor):
	pass # Replace with function body.


func _on_interactable_interacted(interactor):
	action()


func _on_interactable_unfocused(interactor):
	pass # Replace with function body.
