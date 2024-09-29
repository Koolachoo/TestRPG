extends Node

const balloon: Array = ["Nosepass", ["Rock"], 30, 45, 135, 45, 90, 30, 108]
const balloon_learnset: Dictionary = {1: ["Tackle"], 7: ["Harden"], 13: ["Rock Throw"], 16: ["Block"], 22: ["Thunder Wave"], 28: ["Rock Slide"], 31: ["Sandstrom"], 37: ["Rest"], 43: ["Zap Cannon"], 46: ["Lock-On"]}

const skitty: Array = ["Skitty", ["Normal"], 50, 45, 45, 35, 35, 50, 65]
const skitty_lernset: Dictionary = {1: ["Growl", "Tackle"], 3: ["Tail Whip"], 7: ["Attract"], 13: ["Sing"], 15: ["DoubleSlap"], 19: ["Assist"], 25: ["Charm"], 27: ["Faint Attack"], 31: ["Covet"], 33: ["Heal Bell"], 39: ["Double Edge"]}
const delcatty: Array = ["Delcatty", ["Normal"], 70, 65, 65, 55, 55, 90, 138]
const delcatty_lernset: Dictionary = {1: ["Growl", "Attract", "Sing", "DoubleSlap"]}

const sabyele: Array = ["Sableye", ["Dark", "Ghost"], 50, 75, 75, 65, 65, 50, 98]
const sableye_lernset: Dictionary = {1: ["Scratch", "Leer"], 5: ["Foresight"], 9: ["Night Shade"], 13: ["Astonish"], 17: ["Fury Swipes"], 21: ["Fake Out"], 25: ["Detect"], 29: ["Faint Attack"], 33: ["Knock Off"], 37: ["Confuse Ray"], 41: ["Shadow Ball"], 45: ["Mean Look"]}

const mawile: Array = ["Mawile", ["Steel", "Fairy"], 50, 85, 85, 55, 55, 50, 98]
const mawile_lernset: Dictionary = {1: ["Astonish"], 6: ["Fake Tears"], 11: ["Bite"], 16: ["Sweet Scent"], 21: ["ViceGrip"], 26: ["Faint Attck"], 31: ["Baton Pass"], 36: ["Crunch"], 41: ["Iron Defense"], 46: ["Stockpile", "Swallow", "Spit Up"]}

const aron: Array = ["Aron", ["Steel", "Rock"], 50, 70, 100, 40, 40, 30, 96]
const aron_lernset: Dictionary = {1: ["Tackle"], 4: ["Harden"], 7: ["Mud-Slap"], 10: ["Headbutt"], 13: ["Metal Claw"], 17: ["Iron Defense"], 21: ["Roar"], 25: ["Take Down"], 29: ["Iron Tail"], 34: ["Protect"], 39: ["Metal Sound"], 44: ["Double-Edge"]}
const lairon: Array = ["Lairon", ["Steel", "Rock"], 60, 90, 140, 50, 50, 40, 152]
const lairon_lernset: Dictionary = {1: ["Tackle", "Harden", "Mud-Slap", "Headbutt"], 4: ["Harden"], 7: ["Mud-Slap"], 10: ["Headbutt"], 13: ["Metal Claw"], 17: ["Iron Defense"], 21: ["Roar"], 25: ["Take Down"], 29: ["Iron Tail"], 37: ["Protect"], 45: ["Metal Sound"], 53: ["Double-Edge"]}
const aggron: Array = ["Aggron", ["Steel", "Rock"], 70, 110, 180, 60, 60, 50, 205]
const aggron_lernset: Dictionary = {1: ["Tackle", "Harden", "Mud-Slap",  "Headbutt"], 4: ["Harden"], 7: ["Mud-Slap"], 10: ["Headbutt"], 13: ["Metal Claw"], 17: ["Iron Defense"], 21: ["Roar"], 25: ["Take Down"], 29: ["Iron Tail"], 37: ["Protect"], 50: ["Metal Sound"], 63: ["Double-Edge"]}

const meditite: Array = ["Meditite", ["Fight", "Psychic"], 30, 40, 55, 40, 55, 60, 91]
const meditite_lernset: Dictionary = {1: ["Bide"], 4: ["Meditate"], 9: ["Confusion"], 12: ["Detect"], 17: ["Hidden Power"], 20: ["Swagger"], 25: ["Mind Reader"], 28: ["Calm Mind"], 33: ["Hi Jump Kick"], 36: ["Psych Up"], 41: ["Reversal"], 44: ["Recover"]}
const medicham: Array = ["Medicham", ["Fight", "Psychic"], 60, 60, 76, 60, 76, 80, 153]
const medicahm_lernset: Dictionary = {1: ["Fire Punch", "Ice Punch", "Thunder Punch", "Bide", "Meditate", "Confusion", "Detect"], 4: ["Meditate"], 9: ["Confusion"], 12: ["Detect"], 17: ["Hidden Power"], 20: ["Swagger"], 25: ["Mind Reader"], 28: ["Calm Mind"], 33: ["Hi Jump Kick"], 36: ["Psych Up"], 47: ["Reversal"], 56: ["Recover"]}


const pokemon: Array = [balloon]
const pokemon_learnset: Array = [balloon_learnset]

const pokemon_front_sprite: Array = [preload("res://sprites/mons/balloon2.png")]
#const pokemon_back_sprite: Array = [preload("res://battle_assets/pokemon/treecko/back.png")]


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
