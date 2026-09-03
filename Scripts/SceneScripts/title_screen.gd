extends Node2D


var tween:Tween

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_start_pressed() -> void:
	await wait(0.12)
	get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")


func _on_settings_pressed() -> void:
	await wait(0.12)
	get_tree().change_scene_to_file("res://Scenes/settings_scene.tscn")


func _on_quit_pressed() -> void:
	await wait(0.12)
	get_tree().quit()

func wait(seconds: float) -> void: # write this simple function out for wait!
	await get_tree().create_timer(seconds).timeout
