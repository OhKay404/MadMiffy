extends AudioStreamPlayer



var music_enabled: bool = true
var current_screen : String = "" #title, settings, timer, m1, m2, m3, m4, winner, loser
var music_volume: int
var title = preload("res://Music/town.wav")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	autoplay = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func play_song(song: AudioStream):
	if stream != song:
		stream = song
		play()


func pause():
	stream_paused = true

func resume():
	stream_paused = false

func set_volume(value):
	AudioServer.set_bus_volume_db(0, value)
