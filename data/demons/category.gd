extends Resource

@export var front: Texture2D
@export var back: Texture2D

@export var cry: Resource

@export var type1: Resource
@export var type2: Resource

@export var move1: Resource
@export var move2: Resource
@export var move3: Resource
@export var move4: Resource

@export var HP: int = 10
@export var MP: int = 10
@export var Muscle: int = 10
@export var Mind: int = 10
@export var Guard: int = 10
@export var Aura: int = 10
@export var Agility: int = 10

func get_mon_name()->String:
	return resource_path.get_file().get_basename().capitalize()
