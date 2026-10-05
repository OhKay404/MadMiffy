extends AudioStreamPlayer

var music_enabled: bool = true
var current_screen : String = "" #title, settings, timer, m1, m2, m3, m4, winner, loser
var music_volume: int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	autoplay = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#func play(song: AudioStream):
#	if stream !=

func pause():
	stream_paused = true

func resume():
	stream_paused = false
