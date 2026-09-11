extends Node2D

var mouse_position:Vector2 = get_global_mouse_position()
var timer_end:bool = false
@onready var themed_timer: Node2D = $ThemedTimer
@onready var food1:TextureRect = $Food1
@onready var food2:TextureRect = $Food2
@onready var food3:TextureRect = $Food3
@onready var food4:TextureRect = $Food4

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	await themed_timer.Timer(8.5)
	timer_end = true 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if food1.pressed():
		if Global.minigames_done == 3:
			get_tree().change_scene_to_file("res://Scenes/winner_screen.tscn")
		else:
			get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")
	if timer_end:
		Global.lives -= 1
		Global.minigames_done -=1
		if Global.lives < 1:
			get_tree().change_scene_to_file("res://Scenes/death_screen.tscn")
		else:
			get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")
