extends Node3D

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var cat_ani = $Cat/AnimationPlayer
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	cat_ani.play("Idle")
