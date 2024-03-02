extends Node3D


@onready var playani = $Player/AnimationPlayer
@onready var enemani = $Enemy/AnimationPlayer
var cat = preload("res://MonsterParty/monster_cat.tscn")
var fish = preload("res://MonsterParty/monster_fish.tscn")
var selected = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	main_buttons_ready()
	set_player()
	set_enemy()


func set_player():
	var playtemp = cat.instantiate()
	$Player.add_child(playtemp)
	playani.play("grow")
	

func set_enemy():
	var enemtemp = fish.instantiate()
	$Enemy.add_child(enemtemp)
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
	


