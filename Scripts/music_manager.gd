extends AudioStreamPlayer



var music_enabled: bool = true
var current_screen : String = "" #title, settings, timer, m1, m2, m3, m4, winner, loser
var music_volume: int
var title = preload("res://Music/town.wav")
var timer = preload("res://Music/start.wav")
var m1 = preload("res://Music/boss battle.wav")
var m3 = preload("res://Music/regrowth wip.wav")
var winner = preload("res://Music/shop.wav")
var death = preload("res://Music/journey.wav")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	autoplay = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func play_song(song: AudioStream, time: float = 0.0):
	if stream != song:
		stream = song
		play(time)
	if stream == song and time!= 0:
		play(time)


func pause():
	stream_paused = true

func resume():
	stream_paused = false

func set_volume(value):
	AudioServer.set_bus_volume_db(0, value)
