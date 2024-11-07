extends Node
 

# Called when the node enters the scene tree for the first time.
func _ready():
	#print(selectedMonsters)
	addMonster("Cat")
	addMonster("Fish")
	addMonster("Fish")
	addMonster("Mush")
	addMonster("Orc")
	addMonster("Balloon")
	addMonster("Boar")
	#addEXP(100)
	#print(selectedMonsters)


var type = {
	0: {
		"Name": "Wild"
	},
	1: {"Name": "Air"}
}
var databaseMonsters = {
	0: {
		"Name": "Cat",
		"Type": "Wild",
		"HP": 100,
		"Level": 1,
		"Exp": 0,
		"MaxExp": 10,
		"Attack": 20,
		"Defense": 20,
		"Scene":preload("res://MonsterParty/monster_cat.tscn"),
		"Attacks": {
			0: {
				"Name": "Bite",
				"Target" : "Monster",
				"Damage" : 10,
				"Cost": 2
			},
			1: {
				"Name": "Howl",
				"Target" : "Monster",
				"Damage" : 10,
				"Cost": 2
			},
			2: {
				"Name": "Blast",
				"Target" : "Monster",
				"Damage" : 10,
				"Cost": 2
			},
			3: {"Name": "Lick",
				"Target" : "Monster",
				"Damage" : 10,
				"Cost": 2}
			
			}},
	1: {"Name": "Fish",
		"Type": "Aqua",
		"HP": 100,
		"Level": 1,
		"Exp": 0,
		"MaxExp": 10,
		"Attack": 20,
		"Defense": 20,
		"Scene":preload("res://MonsterParty/monster_fish.tscn"),
		"Attacks": {
			0: {
				"Name": "Bite",
				"Target" : "Monster",
				"Damage" : 10,
				"Cost": 2
			},
			1: {
				"Name": "Howl",
				"Target" : "Monster",
				"Damage" : 10,
				"Cost": 2
			},
			2: {
				"Name": "Blast",
				"Target" : "Monster",
				"Damage" : 10,
				"Cost": 2
			}}},
	2: {"Name": "Mush",
		"Type": "Nature",
		"HP": 100,
		"Level": 1,
		"Exp": 0,
		"MaxExp": 10,
		"Attack": 20,
		"Defense": 20,
		"Scene":preload("res://MonsterParty/monster_mush.tscn"),
		"Attacks": {
			0: {
				"Name": "Bite",
				"Target" : "Monster",
				"Damage" : 10,
				"Cost": 2
			},
			1: {
				"Name": "Howl",
				"Target" : "Monster",
				"Damage" : 10,
				"Cost": 2
			},
			2: {
				"Name": "Blast",
				"Target" : "Monster",
				"Damage" : 10,
				"Cost": 2
			}}},
	3: {"Name": "Orc",
		"Type": "Devil",
		"HP": 100,
		"Level": 1,
		"Exp": 0,
		"MaxExp": 10,
		"Attack": 20,
		"Defense": 20,
		"Scene":preload("res://MonsterParty/monster_orc.tscn"),
		"Attacks": {
			0: {
				"Name": "Bite",
				"Target" : "Monster",
				"Damage" : 10,
				"Cost": 2
			},
			1: {
				"Name": "Howl",
				"Target" : "Monster",
				"Damage" : 10,
				"Cost": 2
			},
			2: {
				"Name": "Blast",
				"Target" : "Monster",
				"Damage" : 10,
				"Cost": 2
			}}},
	4: {"Name": "Balloon",
		"Type": "Air",
		"HP": 100,
		"Level": 1,
		"Exp": 0,
		"MaxExp": 10,
		"Attack": 20,
		"Defense": 20,
		"Scene":preload("res://MonsterParty/monster_balloon.tscn"),
		"Attacks": {
			0: {
				"Name": "Bite",
				"Target" : "Monster",
				"Damage" : 10,
				"Cost": 2
			},
			1: {
				"Name": "Howl",
				"Target" : "Monster",
				"Damage" : 10,
				"Cost": 2
			},
			2: {
				"Name": "Blast",
				"Target" : "Monster",
				"Damage" : 10,
				"Cost": 2
			}}},
	5: {"Name": "Boar",
		"Type": "Wild",
		"HP": 100,
		"Level": 1,
		"Exp": 0,
		"MaxExp": 10,
		"Attack": 20,
		"Defense": 20,
		"Scene":preload("res://MonsterParty/monster_boar.tscn"),
		"Attacks": {
			0: {
				"Name": "Bite",
				"Target" : "Monster",
				"Damage" : 10,
				"Cost": 2
			},
			1: {
				"Name": "Howl",
				"Target" : "Monster",
				"Damage" : 10,
				"Cost": 2
			},
			2: {
				"Name": "Blast",
				"Target" : "Monster",
				"Damage" : 10,
				"Cost": 2
			}}}}

var selectedMonsters = {
	
}

func addMonster(Name):
	for i in databaseMonsters:
		if databaseMonsters[i]["Name"] == Name:
			var tempDic = databaseMonsters[i].duplicate(true)
			selectedMonsters[selectedMonsters.size()] = tempDic





#func addEXP(amount):
	#for i in selectedMonsters:
		#selectedMonsters[i]["Exp"] += amount
		#if selectedMonsters[i]["Exp"] >= selectedMonsters[i]["MaxExp"]:
			##level up
			#selectedMonsters[i]["Level"] += 1
			#selectedMonsters[i]["Exp"] = 0
			#selectedMonsters[i]["MaxExp"] = selectedMonsters[i]["MaxExp"]*1.5
