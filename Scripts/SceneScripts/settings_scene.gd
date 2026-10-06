extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$VolumeAdjust.value = MusicManager.music_volume
	MusicManager.play_song(MusicManager.title)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_volume_adjust_value_changed(value) -> void:
	MusicManager.set_volume(value)
	MusicManager.music_volume = value


func _on_toggle_volume_toggled(toggled_on: bool) -> void:
	if !toggled_on:
		MusicManager.pause()
		$VolumeOnText.text = "Off"
	elif toggled_on:
		MusicManager.resume()
		$VolumeOnText.text = "On"


func _on_home_button_pressed() -> void:
	await get_tree().create_timer(0.11).timeout
	get_tree().change_scene_to_file("res://Scenes/title_screen.tscn")
