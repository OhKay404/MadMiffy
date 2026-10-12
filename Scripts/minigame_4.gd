extends Node2D

var num_clicked:int = 0
var timer_end:bool = false
@onready var themed_timer: Node2D = $ThemedTimer
@onready var mole1:TextureButton = $Mole1
@onready var mole2:TextureButton = $Mole2
@onready var mole3:TextureButton = $Mole3
@onready var mole4:TextureButton = $Mole4


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	MusicManager.play_song(MusicManager.m4, 123.0)
	randomize()
	var random_num = int(randi_range(1, 4))
	var mole = get("mole" + str(random_num))
	await get_tree().create_timer(0.3).timeout
	mole.modulate = "#ffffff"
	mole.disabled = false
	await themed_timer.Timer(6)
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


func _on_mole_1_pressed() -> void:
	if mole1.modulate == Color("#ffffff"):
		mole1.modulate = Color("#ffffff00")
		mole1.disabled = true
		num_clicked += 1
		#miffy_tween()
		if num_clicked == 5:
			if Global.minigames_done == 4:
				await get_tree().create_timer(0.15).timeout
				get_tree().change_scene_to_file("res://Scenes/winner_screen.tscn")
			else:
				await get_tree().create_timer(0.15).timeout
				get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")
		else:
			randomize()
			var random_num = int(randi_range(1, 4))
			var selected_mole = get("mole" + str(random_num))
			selected_mole.modulate = "#ffffff00"
			await get_tree().create_timer(0.3).timeout
			selected_mole.modulate = "#ffffff"
			selected_mole.disabled = false
	else:
		Global.lives -= 1
		Global.minigames_done -=1
		if Global.lives < 1:
			get_tree().change_scene_to_file("res://Scenes/death_screen.tscn")
		else:
			get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")


func _on_mole_2_pressed() -> void:
	if mole2.modulate == Color("#ffffff"):
		mole2.modulate = Color("#ffffff00")
		mole2.disabled = true
		num_clicked += 1
		#miffy_tween()
		if num_clicked == 5:
			if Global.minigames_done == 4:
				await get_tree().create_timer(0.15).timeout
				get_tree().change_scene_to_file("res://Scenes/winner_screen.tscn")
			else:
				await get_tree().create_timer(0.15).timeout
				get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")
		else:
			randomize()
			var random_num = int(randi_range(1, 4))
			var selected_mole = get("mole" + str(random_num))
			selected_mole.modulate = "#ffffff00"
			await get_tree().create_timer(0.3).timeout
			selected_mole.modulate = "#ffffff"
			selected_mole.disabled = false
	else:
		Global.lives -= 1
		Global.minigames_done -=1
		if Global.lives < 1:
			get_tree().change_scene_to_file("res://Scenes/death_screen.tscn")
		else:
			get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")


func _on_mole_3_pressed() -> void:
	if mole3.modulate == Color("#ffffff"):
		mole3.modulate = Color("#ffffff00")
		mole3.disabled = true
		num_clicked += 1
		#miffy_tween()
		if num_clicked == 5:
			if Global.minigames_done == 4:
				await get_tree().create_timer(0.15).timeout
				get_tree().change_scene_to_file("res://Scenes/winner_screen.tscn")
			else:
				await get_tree().create_timer(0.15).timeout
				get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")
		else:
			randomize()
			var random_num = int(randi_range(1, 4))
			var selected_mole = get("mole" + str(random_num))
			selected_mole.modulate = "#ffffff00"
			await get_tree().create_timer(0.3).timeout
			selected_mole.modulate = "#ffffff"
			selected_mole.disabled = false
	else:
		Global.lives -= 1
		Global.minigames_done -=1
		if Global.lives < 1:
			get_tree().change_scene_to_file("res://Scenes/death_screen.tscn")
		else:
			get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")


func _on_mole_4_pressed() -> void:
	if mole4.modulate == Color("#ffffff"):
		mole4.modulate = Color("#ffffff00")
		mole4.disabled = true
		num_clicked += 1
		#miffy_tween()
		if num_clicked == 5:
			if Global.minigames_done == 4:
				await get_tree().create_timer(0.15).timeout
				get_tree().change_scene_to_file("res://Scenes/winner_screen.tscn")
			else:
				await get_tree().create_timer(0.15).timeout
				get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")
		else:
			randomize()
			var random_num = int(randi_range(1, 4))
			var selected_mole = get("mole" + str(random_num))
			selected_mole.modulate = "#ffffff00"
			await get_tree().create_timer(0.3).timeout
			selected_mole.modulate = "#ffffff"
			selected_mole.disabled = false
	else:
		Global.lives -= 1
		Global.minigames_done -=1
		if Global.lives < 1:
			get_tree().change_scene_to_file("res://Scenes/death_screen.tscn")
		else:
			get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")
