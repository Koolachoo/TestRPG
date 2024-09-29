extends Control
@onready var enName = Game.selectedMonsters[get_parent().enselected]["Name"]

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$EnemyHP.value = Game.selectedMonsters[get_parent().enselected]["HP"]
	$Info2.text = str(enName) + " LVL:" + str(Game.selectedMonsters[get_parent().enselected]["Level"])
	$HPtxt2.text = str(Game.selectedMonsters[get_parent().enselected]["HP"])
