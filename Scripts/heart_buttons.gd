extends TextureButton

var tween:Tween
@onready var parent:Node2D = $".."

func _on_pressed() -> void: #YOU NEED TO CONNECT THIS SIGNAL FROM THE TAB NEXT TO INSPECTOR!!
	hide()
	parent.buttons_pressed += 1



func _on_mouse_entered() -> void:
	if tween:tween.kill()
	tween = create_tween()
	tween.set_ease(Tween.EASE_OUT)
	tween.set_trans(Tween.TRANS_CIRC)
	tween.tween_property(self, "scale", Vector2(0.72, 0.72), 0.1)



func _on_mouse_exited() -> void:
	if tween:tween.kill()
	tween = create_tween()
	tween.set_ease(Tween.EASE_OUT)
	tween.set_trans(Tween.TRANS_CIRC)
	tween.tween_property(self, "scale", Vector2(0.65, 0.65), 0.1)



func _on_button_down() -> void:
	if tween:tween.kill()
	tween = create_tween()
	tween.set_ease(Tween.EASE_OUT)
	tween.set_trans(Tween.TRANS_CIRC)
	tween.tween_property(self, "scale", Vector2(0.23, 0.23), 0.2)
