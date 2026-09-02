extends Button

var tween:Tween

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pivot_offset = size * Vector2(0.5, 1.0)
	button_down.connect(_on_button_down)
	button_up.connect(_on_button_up)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_button_down() -> void:
	if tween: tween.kill()
	scale = Vector2(0.9, 0.7)


func _on_button_up() -> void:
	tween = create_tween()
	tween.set_ease(Tween.EASE_OUT)
	tween.tween_property(self, "scale", Vector2(1,1), 0.1)
