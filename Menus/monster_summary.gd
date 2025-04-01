extends Control

@onready var grid = $Panel/VBoxContainer/GridContainer
@onready var pause = "res://Menus/pause.tscn"
var pause_menu_ref: Control

func _ready():
	populate_stats()

func populate_stats():
	# Example data from Global singleton (could also be passed in from PauseMenu)
	var stats: Dictionary = {
		"HP": Game.player_hp,
		"Attack": Game.player_attack,
		"Defense": Game.player_defense,
		"Speed": Game.player_speed
	}

	# Clear existing stat labels if needed
	for child in grid.get_children():
		child.queue_free()

	# Add updated stat labels
	for stat_name in stats.keys():
		var name_label = Label.new()
		name_label.text = stat_name + ":"
		grid.add_child(name_label)

		var value_label = Label.new()
		value_label.text = str(stats[stat_name])
		grid.add_child(value_label)


func _on_back_button_pressed() -> void:
	if pause_menu_ref:
		pause_menu_ref.visible = true 
	queue_free()
