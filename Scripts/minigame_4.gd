extends Node2D

var timer_end:bool = false
@onready var themed_timer: Node2D = $ThemedTimer
@onready var mole1:TextureButton = $Mole1
@onready var mole2:TextureButton = $Mole2
@onready var mole3:TextureButton = $Mole3
@onready var mole4:TextureButton = $Mole4


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	randomize()
	var random_num = int(randi_range(1, 4))
	var mole = get("mole" + str(random_num))
	await get_tree().create_timer(0.3).timeout
	mole.modulate = "#ffffff"
	await themed_timer.Timer(5)
	timer_end = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
