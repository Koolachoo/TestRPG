extends Node3D


@onready var playani = $Player/AnimationPlayer
@onready var enemani = $Enemy/AnimationPlayer
@onready var playHP = $UI/HPtxt
var cat = preload("res://MonsterParty/monster_cat.tscn")
var fish = preload("res://MonsterParty/monster_fish.tscn")
var playerUnit = preload("res://Battle Scene/playerunit.tscn")
var selected = 5
var enselected = 6

var player_monster
var enemy_monster
var is_player_turn = true
var battle_over = false
# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().debugger_request_scene_tree()
	set_player()
	set_enemy()
	main_buttons_ready()
	#start_battle()
	
	
	

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
	var playtemp = playerUnit.instantiate()

	# Load the monster data from the .tres file
	var monster_data = load("res://data/demons/boar.tres")
	# Extract the texture from the loaded .tres file
	if monster_data.front != null:
		playtemp.set_texture(monster_data.front)
	else:
		print("Texture not found in the monster data!")
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
	

# gpt logic from here on, for the battle
# Battle logic is going on here
# Start the battle loop
func start_battle():
	print("Battle start!")
	is_player_turn = true
	battle_loop()

# The main battle loop
func battle_loop():
	if battle_over:
		return

	if is_player_turn:
		print("Player's turn")
		player_turn()
	else:
		print("Enemy's turn")
		enemy_turn()

# Player's turn
func player_turn():
	# Example: Player chooses a move; here we'll just simulate damage for simplicity
	var damage = 20  # Placeholder damage value for player move
	print("Player attacks for ", damage, " damage!")
	apply_damage(cat, damage)
	
	# Check if enemy is defeated
	if check_defeat(fish):
		end_battle("Player wins!")
		return
	
	# Switch to enemy's turn
	is_player_turn = false
	battle_loop()

# Enemy's turn
func enemy_turn():
	# Example: Enemy chooses a move; here we'll just simulate damage for simplicity
	var damage = 15  # Placeholder damage value for enemy move
	print("Enemy attacks for ", damage, " damage!")
	apply_damage(cat, damage)
	
	# Check if player is defeated
	if check_defeat(fish):
		end_battle("Enemy wins!")
		return
	
	# Switch back to player's turn
	is_player_turn = true
	battle_loop()

# Apply damage to a monster
func apply_damage(monster_node, damage):
	cat.hp -= damage  # Assuming each monster has a health property
	print(monster_node.name, " now has ", monster_node.health, " HP")

# Check if a monster is defeated
func check_defeat(monster_node) -> bool:
	return monster_node.health <= 0

# End the battle
func end_battle(result_message):
	battle_over = true
	print(result_message)
