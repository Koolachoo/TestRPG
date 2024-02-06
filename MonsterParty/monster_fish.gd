extends Node3D

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var fish_ani = $Fish/AnimationPlayer
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	fish_ani.play("Idle")
