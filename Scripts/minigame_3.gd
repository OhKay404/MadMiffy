extends Node2D

var num_clicked:int = 0
var mouse_position:Vector2 = get_global_mouse_position()
var timer_end:bool = false
@onready var themed_timer: Node2D = $ThemedTimer
@onready var food1:TextureButton = $Food1
@onready var food2:TextureButton = $Food2
@onready var food3:TextureButton = $Food3
@onready var food4:TextureButton = $Food4
#@onready var bubble_food:TextureRect = $BubbleFood
@onready var bubble1:TextureRect = $Bubble1
@onready var bubble2:TextureRect = $Bubble2
@onready var bubble3:TextureRect = $Bubble3
@onready var bubble4:TextureRect = $Bubble4

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	randomize()
	var random_num = int(randi_range(1, 4))
	var bubble = get("bubble" + str(random_num))
	await get_tree().create_timer(0.3).timeout
	bubble.modulate = "#ffffff"
	await themed_timer.Timer(8)
	timer_end = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if timer_end:
		Global.lives -= 1
		Global.minigames_done -=1
		if Global.lives < 1:
			get_tree().change_scene_to_file("res://Scenes/death_screen.tscn")
		else:
			get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")




func _on_food_1_pressed() -> void:
	if bubble1.modulate == Color("#ffffff"):
		bubble1.modulate == Color("#ffffff00")
		num_clicked += 1
		if num_clicked == 3:
			if Global.minigames_done == 3:
				get_tree().change_scene_to_file("res://Scenes/winner_screen.tscn")
			else:
				get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")
		else:
			randomize()
			var random_num = int(randi_range(1, 4))
			var selected_bubble = get("bubble" + str(random_num))
			selected_bubble.modulate = "#ffffff00"
			await get_tree().create_timer(0.3).timeout
			selected_bubble.modulate = Color("#ffffff")
	else:
		Global.lives -= 1
		Global.minigames_done -=1
		if Global.lives < 1:
			get_tree().change_scene_to_file("res://Scenes/death_screen.tscn")
		else:
			get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")

	
	
	#if bubble_food.texture.resource_path == "res://Images/Food1.png":
		#num_clicked += 1
		#if num_clicked == 3:
			#if Global.minigames_done == 3:
				#get_tree().change_scene_to_file("res://Scenes/winner_screen.tscn")
			#else:
				#get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")
		#else:
			#randomize()
			#var random_num = randi_range(1, 4)
			#bubble_food.texture = load("res://Images/Food" + str(int(random_num)) + ".png")
			#modulate = "#ffffff00"
			#await get_tree().create_timer(0.3).timeout
			#modulate = "#ffffff"
	#else:
		#Global.lives -= 1
		#Global.minigames_done -=1
		#if Global.lives < 1:
			#get_tree().change_scene_to_file("res://Scenes/death_screen.tscn")
		#else:
			#get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")
			#var random_num = int(randi_range(1, 4))
			#var selected_bubble = get("bubble" + str(random_num))
			#modulate = "#ffffff00"
			#await get_tree().create_timer(0.3).timeout
			#selected_bubble.modulate = Color("#ffffff")


func _on_food_2_pressed() -> void:
	if bubble2.modulate == Color("#ffffff"):
		bubble2.modulate == Color("#ffffff00")
		num_clicked += 1
		if num_clicked == 3:
			if Global.minigames_done == 3:
				get_tree().change_scene_to_file("res://Scenes/winner_screen.tscn")
			else:
				get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")
		else:
			randomize()
			var random_num = int(randi_range(1, 4))
			var selected_bubble = get("bubble" + str(random_num))
			selected_bubble.modulate = "#ffffff00"
			await get_tree().create_timer(0.3).timeout
			selected_bubble.modulate = Color("#ffffff")
	else:
		Global.lives -= 1
		Global.minigames_done -=1
		if Global.lives < 1:
			get_tree().change_scene_to_file("res://Scenes/death_screen.tscn")
		else:
			get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")
	#if bubble_food.texture.resource_path == "res://Images/Food2.png":
		#num_clicked += 1
		#if num_clicked == 3:
			#if Global.minigames_done == 3:
				#get_tree().change_scene_to_file("res://Scenes/winner_screen.tscn")
			#else:
				#get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")
		#else:
			#randomize()
			#var random_num = randi_range(1, 4)
			#bubble_food.texture = load("res://Images/Food" + str(int(random_num)) + ".png")
			#modulate = "#ffffff00"
			#await get_tree().create_timer(0.3).timeout
			#modulate = "#ffffff"
	#else:
		#Global.lives -= 1
		#Global.minigames_done -=1
		#if Global.lives < 1:
			#get_tree().change_scene_to_file("res://Scenes/death_screen.tscn")
		#else:
			#get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")

func _on_food_3_pressed() -> void:
	if bubble3.modulate == Color("#ffffff"):
		bubble3.modulate == Color("#ffffff00")
		num_clicked += 1
		if num_clicked == 3:
			if Global.minigames_done == 3:
				get_tree().change_scene_to_file("res://Scenes/winner_screen.tscn")
			else:
				get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")
		else:
			randomize()
			var random_num = int(randi_range(1, 4))
			var selected_bubble = get("bubble" + str(random_num))
			selected_bubble.modulate = "#ffffff00"
			await get_tree().create_timer(0.3).timeout
			selected_bubble.modulate = Color("#ffffff")
	else:
		Global.lives -= 1
		Global.minigames_done -=1
		if Global.lives < 1:
			get_tree().change_scene_to_file("res://Scenes/death_screen.tscn")
		else:
			get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")
	#if bubble_food.texture.resource_path == "res://Images/Food3.png":
		#num_clicked += 1
		#if num_clicked == 3:
			#if Global.minigames_done == 3:
				#get_tree().change_scene_to_file("res://Scenes/winner_screen.tscn")
			#else:
				#get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")
		#else:
			#randomize()
			#var random_num = randi_range(1, 4)
			#bubble_food.texture = load("res://Images/Food" + str(int(random_num)) + ".png")
			#modulate = "#ffffff00"
			#await get_tree().create_timer(0.3).timeout
			#modulate = "#ffffff"
	#else:
		#Global.lives -= 1
		#Global.minigames_done -=1
		#if Global.lives < 1:
			#get_tree().change_scene_to_file("res://Scenes/death_screen.tscn")
		#else:
			#get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")

func _on_food_4_pressed() -> void:
	if bubble4.modulate == Color("#ffffff"):
		bubble4.modulate == Color("#ffffff00")
		num_clicked += 1
		if num_clicked == 3:
			if Global.minigames_done == 3:
				get_tree().change_scene_to_file("res://Scenes/winner_screen.tscn")
			else:
				get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")
		else:
			randomize()
			var random_num = int(randi_range(1, 4))
			var selected_bubble = get("bubble" + str(random_num))
			selected_bubble.modulate = "#ffffff00"
			await get_tree().create_timer(0.3).timeout
			selected_bubble.modulate = Color("#ffffff")
	else:
		Global.lives -= 1
		Global.minigames_done -=1
		if Global.lives < 1:
			get_tree().change_scene_to_file("res://Scenes/death_screen.tscn")
		else:
			get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")
	#if bubble_food.texture.resource_path == "res://Images/Food4.png":
		#num_clicked += 1
		#if num_clicked == 3:
			#if Global.minigames_done == 3:
				#get_tree().change_scene_to_file("res://Scenes/winner_screen.tscn")
			#else:
				#get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")
		#else:
			#randomize()
			#var random_num = randi_range(1, 4)
			#bubble_food.texture = load("res://Images/Food" + str(int(random_num)) + ".png")
			#modulate = "#ffffff00"
			#await get_tree().create_timer(0.3).timeout
			#modulate = "#ffffff"
	#else:
		#Global.lives -= 1
		#Global.minigames_done -=1
		#if Global.lives < 1:
			#get_tree().change_scene_to_file("res://Scenes/death_screen.tscn")
		#else:
			#get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")
