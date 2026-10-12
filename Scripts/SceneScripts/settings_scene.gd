extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$VolumeAdjust.value = MusicManager.music_volume
	$ToggleVolume.button_pressed = MusicManager.music_enabled
	if MusicManager.music_enabled:
		MusicManager.play_song(MusicManager.title)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_volume_adjust_value_changed(value) -> void:
	MusicManager.set_volume(value)
	MusicManager.music_volume = value


func _on_toggle_volume_toggled(toggled_on: bool) -> void:
	MusicManager.toggle_music(toggled_on)
	if toggled_on:
		$VolumeOnText.text = "On"
	else:
		$VolumeOnText.text = "Off"
	

func _on_home_button_pressed() -> void:
	await get_tree().create_timer(0.11).timeout
	get_tree().change_scene_to_file("res://Scenes/title_screen.tscn")
