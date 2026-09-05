extends OptionButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_item("L/R Arrows")
	add_item("A/D Keys")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_item_selected(index: int) -> void:
	if index == 0:
		Global.LEFT_KEY = "ui_left"
		Global.RIGHT_KEY = "ui_right"
	elif index == 1:
		Global.LEFT_KEY = "a_key"
		Global.RIGHT_KEY = "d_key"
