extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pause()


func pause():
	if Input.is_action_just_pressed("pause"):
		get_tree().paused = true
