extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	process_mode = Node.PROCESS_MODE_WHEN_PAUSED


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#pawsButton()
	pass

func pawsButton():
	if Input.is_action_just_pressed("pause"):
		get_tree().paused = false
		hide()

func _on_resume_pressed():
	hide()
	get_tree().paused = false
