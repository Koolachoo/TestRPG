extends Node

@export  var min_hits: int = 1;
@export  var max_hits: int = 1
#export (Array, Resource) var target_status_effects:Array
#export (Array, Resource) var user_status_effects:Array
#export (int, "All", "One At Random") var status_effects_to_apply:int = 0
#export (int) var status_effect_amount:int = 3
#export (int, 0, 100) var status_effect_chance:int = 0
#export (Array, Resource) var status_effect_only_for_target_types:Array
#export (bool) var target_status_only_if_not_had_turn:bool = false
#export (bool) var destroys_walls:bool = false
#export (String) var require_target_tag:String = ""
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
