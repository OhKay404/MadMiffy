extends Node2D

var mouse_position:Vector2 = get_global_mouse_position()
@onready var food1:TextureRect = $Food1
@onready var food2:TextureRect = $Food2
@onready var food3:TextureRect = $Food3
@onready var food4:TextureRect = $Food4

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
