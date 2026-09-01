extends OptionButton



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_item("Spacebar")
	add_item("W Key")
	add_item("Up Arrow Key")
	select(0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if $JumpDrop:
		if $JumpDrop.selected == 0:
			$player_scene.JUMP_KEY = "ui_accept"
		elif $JumpDrop.selected == "W Key":
			$player_scene.gd.JUMP_KEY = "KEY_W"
