extends Node3D


@export var sprite_texture: Texture2D  # An exported variable to set the texture in the Inspector

@onready var sprite_node = $Sprite3D  # Reference to the Sprite3D node

func _ready():
	# If a texture is assigned, set it on the Sprite3D node
	if sprite_texture:
		set_texture(sprite_texture)

# Method to set the texture, which can be called externally
func set_texture(texture: Texture2D):
	if sprite_node == null:
		print("Sprite3D node not found!")
		return
	sprite_node.texture = texture
	print("Texture set to: ", texture)
