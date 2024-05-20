extends Node3D


# Called when the node enters the scene tree for the first time.
@onready var mush_ani = $Mushnub/AnimationPlayer
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	mush_ani.play("Idle")
