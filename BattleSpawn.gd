extends Area3D

#var battle = preload("res://Battle Scene/Battle.tscn")


func _on_body_entered(body):
	if "Sophia" in body.name:
		#$"../UI/AnimationPlayer".play("TransIn")
		get_tree().paused = true
		#await get_tree().create_timer(1.5).timeout
		get_tree().change_scene_to_file("res://Battle Scene/Battle.tscn")
		queue_free()
		#$"../UI/AnimationPlayer".play("TransOut")
