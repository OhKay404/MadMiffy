extends Node2D

var mouse_position:Vector2 = get_global_mouse_position()
var timer_end:bool = false
@onready var themed_timer: Node2D = $ThemedTimer
@onready var food1:TextureButton = $Food1
@onready var food2:TextureButton = $Food2
@onready var food3:TextureButton = $Food3
@onready var food4:TextureButton = $Food4
@onready var bubble_food:TextureRect = $BubbleFood

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	await themed_timer.Timer(3.5)
	timer_end = true 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass




func _on_food_1_pressed() -> void:
	if bubble_food.texture.resource_path == "res://Images/Food1.png":
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



func _on_food_2_pressed() -> void:
	if bubble_food.texture.resource_path == "res://Images/Food2.png":
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


func _on_food_3_pressed() -> void:
	if bubble_food.texture.resource_path == "res://Images/Food3.png":
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


func _on_food_4_pressed() -> void:
	if bubble_food.texture.resource_path == "res://Images/Food4.png":
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
