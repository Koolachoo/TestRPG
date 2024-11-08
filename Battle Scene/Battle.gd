extends Node3D


@onready var playani = $Player/AnimationPlayer
@onready var enemani = $Enemy/AnimationPlayer
var cat = preload("res://MonsterParty/monster_cat.tscn")
var fish = preload("res://MonsterParty/monster_fish.tscn")
var boar = preload("res://MonsterParty/monster_boar.tscn")
var selected = 5
var enselected = 6
# Called when the node enters the scene tree for the first time.
func _ready():
	set_enemy()
	main_buttons_ready()
	
	
	

func get_demon():
	for i in Game.selectedMonsters:
		var monTemp = Game.selectedMonsters[i]["Scene"].instantiate
		monTemp.name = Game.selectedMonsters[i]["Name"]
		monTemp.hide()
		#$Player.add_child(monTemp)

#this is the previously used DokiMon code
func call_mons():
	for i in Game.selectedMonsters:
		var monTemp = Game.selectedMonsters[i]["Scene"].instantiate()
		monTemp.name = Game.selectedMonsters[i]["Name"]
		monTemp.hide()
		$Player.add_child(monTemp)
	for i in Game.selectedMonsters:
		var enemyTemp = Game.selectedMonsters[i]["Scene"].instantiate()
		enemyTemp.name = Game.selectedMonsters[i]["Name"]
		enemyTemp.hide()
		$Enemy.add_child(enemyTemp)
	$Player.get_child(6).show()
	$Enemy.get_child(7).show()
	playani.play("grow")
	enemani.play("grow")
	#set_player()

		
func set_player():
	var playtemp = cat.instantiate()
	$Player.add_child(playtemp)
	playani.play("grow")
	

func set_enemy():
	var monTemp = fish.instantiate()
	$Enemy.add_child(monTemp)
	enemani.play("grow")

func main_buttons_ready():
	$UI/MarginContainer/FightMenu/Fight.grab_focus()
	$UI/MarginContainer/FightMenu/Stats.grab_focus()
	$UI/MarginContainer/FightMenu/Switch.grab_focus()
	$UI/MarginContainer/FightMenu/Capture.grab_focus()
	$UI/MarginContainer/FightMenu/Run.grab_focus()

func _on_fight_pressed():
	$UI/MarginContainer/FightMenu.visible = false
	$UI/MarginContainer/Moves.visible = true
	$"UI/MarginContainer/Moves/Move 1".grab_focus()
	$"UI/MarginContainer/Moves/Move 2".grab_focus()
	$"UI/MarginContainer/Moves/Move 3".grab_focus()
	$"UI/MarginContainer/Moves/Move 4".grab_focus()
	$"UI/MarginContainer/Moves/Cancel".grab_focus()
	





func _on_cancel_pressed():
	$UI/MarginContainer/Switch.visible = false
	$UI/MarginContainer/Moves.visible = false
	$UI/MarginContainer/FightMenu.visible = true
	main_buttons_ready()

#battle mechanics

func hit(anim, damage):
	fish.Health -= damage

func capture():
	$AnimationPlayer.play("Capture", -1,3)
	await $AnimationPlayer.animation_finished
	get_parent().get_parent().on_run_pressed()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	




func _on_switch_pressed():
	$UI/MarginContainer/FightMenu.visible = false
	$UI/MarginContainer/Switch.visible = true
	$"UI/MarginContainer/Switch/Monster 1".grab_focus()
func _on_capture_pressed():
	$UI/MarginContainer/FightMenu.visible = false
	
