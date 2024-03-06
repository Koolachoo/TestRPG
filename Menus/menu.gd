extends Control

func _ready():
	$MarginContainer/VBoxContainer/VBoxContainer2/Quit.grab_focus()
	$MarginContainer/VBoxContainer/VBoxContainer2/Play.grab_focus()
	$MarginContainer/VBoxContainer/VBoxContainer2/Options.grab_focus()

func _on_quit_pressed():
	
	get_tree().quit()



func _on_play_pressed():
	
	get_tree().change_scene_to_file("res://main.tscn")



func _on_options_pressed():
	
	pass
