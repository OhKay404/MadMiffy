extends TextureRect

@onready var random_food_string:String = "res://Images/Food" + str(int(randf_range(1, 4))) + ".png"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	texture = load(random_food_string)
	modulate = "#ffffff00"
	await get_tree().create_timer(0.7).timeout
	modulate = "#ffffff"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
