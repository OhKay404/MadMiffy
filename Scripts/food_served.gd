extends RichTextLabel

var tween:Tween

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	floating()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	text = "Food Served: " + str(get_parent().num_clicked) + "/3"

func floating() -> void:
	if tween:tween.kill
	tween = create_tween()
	tween.set_ease(Tween.EASE_OUT)
	tween.set_trans(Tween.TRANS_CIRC)
	tween.tween_property(self, "position:y", position.y + 5, 0.1)
	tween.tween_property(self, "position:y", position.y - 5, 0.1)
