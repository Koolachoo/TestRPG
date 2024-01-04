extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

var databaseMonsters = {
	0: {
		"Name": "Cat",
		"Type": "Wild",
		"HP": 100,
		"Level": 1,
		"Exp": 0,
		"MaxExp": 0,
		"Attack": 20,
		"Defense": 20,
		"Scene":preload("res://MonsterParty/monster_cat.tscn")},
	1: {"Name": "Cat",
		"Type": "Wild",
		"HP": 100,
		"Level": 1,
		"Exp": 0,
		"MaxExp": 0,
		"Attack": 20,
		"Defense": 20,
		"Scene":preload("res://MonsterParty/monster_cat.tscn")},
	2: {"Name": "Cat",
		"Type": "Wild",
		"HP": 100,
		"Level": 1,
		"Exp": 0,
		"MaxExp": 0,
		"Attack": 20,
		"Defense": 20,
		"Scene":preload("res://MonsterParty/monster_cat.tscn")},
	3: {"Name": "Cat",
		"Type": "Wild",
		"HP": 100,
		"Level": 1,
		"Exp": 0,
		"MaxExp": 0,
		"Attack": 20,
		"Defense": 20,
		"Scene":preload("res://MonsterParty/monster_cat.tscn")}
}

var selectedMonsters = {
	
}
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
