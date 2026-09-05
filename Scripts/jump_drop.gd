extends OptionButton



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_item("Spacebar")
	add_item("W Key")
	add_item("Up Arrow")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_item_selected(index: int) -> void:
		if index == 0:
			Global.JUMP_KEY = "ui_accept"
		elif index == 1:
			Global.JUMP_KEY = "w_key"
		elif index == 2:
			Global.JUMP_KEY = "ui_up"
