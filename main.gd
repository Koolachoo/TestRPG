extends Node3D

var battle = preload("res://Battle Scene/Battle.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("pause"):
		get_tree().paused = not get_tree().paused
		$Pause.visible = not $Pause.visible
		
		





func _on_battle_spawn_body_entered(body):
	if "Sophia" in body.name:
		
		#$UI/AnimationPlayer.play("TransIn")
		get_tree().paused = not get_tree().paused
		#await get_tree().create_timer(1.5).timeout
		#var battleTemp = battle.instantiate()
		#get_parent().add_child(battleTemp)
		var current_scene = get_tree().get_current_scene()
		get_tree().change_scene_to("res://Battle Scene/Battle.tscn", current_scene)
		#get_tree().change_scene_to_file("res://Battle Scene/Battle.tscn")
		#queue_free()
		#$UI/AnimationPlayer.play("TransOut")
