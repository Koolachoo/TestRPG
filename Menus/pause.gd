extends Control
@onready var stats_screen = preload("res://Menus/stats.tscn")
@onready var monster_screen = preload("res://Menus/monsterSummary.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	process_mode = Node.PROCESS_MODE_WHEN_PAUSED
	$MarginContainer/VBoxContainer2/VBoxContainer/Resume.grab_focus()
	$MarginContainer/VBoxContainer2/VBoxContainer/Player.grab_focus()
	$MarginContainer/VBoxContainer2/VBoxContainer/Monster.grab_focus()
	$MarginContainer/VBoxContainer2/VBoxContainer/Items.grab_focus()
	$MarginContainer/VBoxContainer2/VBoxContainer/Options.grab_focus()
	$MarginContainer/VBoxContainer2/VBoxContainer/Quit.grab_focus()
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
	


func _on_monster_pressed() -> void:
	
	var monster = monster_screen.instantiate()
	monster.pause_menu_ref = self
	self.visible = false
	get_tree().get_root().add_child(monster) #note for future developer, add_child by itself works to open the stats, but the puase doesn't go away
