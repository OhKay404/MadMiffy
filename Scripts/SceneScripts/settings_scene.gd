extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$VolumeAdjust.value = ($VolumeAdjust.min_value + $VolumeAdjust.max_value) / 2

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_volume_adjust_value_changed(value) -> void:
	AudioServer.set_bus_volume_db(0, value)



func _on_toggle_volume_toggled(toggled_on: bool) -> void:
	if !toggled_on:
		$Test.stream_paused = true
		$VolumeOnText.text = "Off"
	elif toggled_on:
		$Test.stream_paused = false
		$VolumeOnText.text = "On"


func _on_home_button_pressed() -> void:
	await get_tree().create_timer(0.12).timeout
	get_tree().change_scene_to_file("res://Scenes/title_screen.tscn")
