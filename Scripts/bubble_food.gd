extends TextureRect

var random_food_string:String

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	randomize()
	var random_num = randi_range(1, 4)
	random_food_string = "res://Images/Food" + str(int(random_num)) + ".png"
	texture = load(random_food_string)
	modulate = "#ffffff00"
	await get_tree().create_timer(0.3).timeout
	modulate = "#ffffff"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
