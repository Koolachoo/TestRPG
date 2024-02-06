extends Node3D


@export var mob_scene: PackedScene
func make_monster():
	var mob = mob_scene.instantiate()
	#var mob_spawn_location = get_node("SpawnPath/SpawnLocation")
	mob.initialize()
	add_child(mob)


func _on_fight_pressed():
	pass # Replace with function body.



func _on_run_pressed():
	get_tree().change_scene_to_file("res://main.tscn")
