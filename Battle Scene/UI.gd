extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_run_pressed():
	get_tree().pop_scene()
	#get_tree().change_scene("res://main.tscn")
	#get_parent().queue_free()
	get_tree().paused = not get_tree().paused
	#get_tree().paused = not get_tree().paused




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$PlayerHP.value = Game.selectedMonsters[get_parent().selected]["HP"]
	$Info.text = str(Game.selectedMonsters[get_parent().selected]["Name"]) + " LVL:" + str(Game.selectedMonsters[get_parent().selected]["Level"])
	$HPtxt.text = str(Game.selectedMonsters[get_parent().selected]["HP"])
	#SET ATTACK NAMES
	for i in Game.selectedMonsters[get_parent().selected]["Attacks"]:
		var path = "MarginContainer/Moves/Move " + str(((i)+1))
		get_node(path).text = Game.selectedMonsters[get_parent().selected]["Attacks"][i]["Name"]
