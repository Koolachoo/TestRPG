extends Node3D


@export var mob_scene: PackedScene
func make_monster():
	var mob = mob_scene.instantiate()
	#var mob_spawn_location = get_node("SpawnPath/SpawnLocation")
	mob.initialize()
	add_child(mob)
