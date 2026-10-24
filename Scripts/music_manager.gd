extends AudioStreamPlayer



var music_enabled: bool = true
var current_screen : String = "" #title, settings, timer, m1, m2, m3, m4, winner, loser
var music_volume: int
var title = preload("res://Music/town.wav")
var timer = preload("res://Music/start.wav")
var m1 = preload("res://Music/boss battle.wav")
var m2 = preload("res://Music/start2.wav")
var m3 = preload("res://Music/regrowth wip.wav")
var m4 = preload("res://Music/blossom.wav")
var winner = preload("res://Music/shop.wav")
var death = preload("res://Music/journey.wav")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	autoplay = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func play_song(song: AudioStream, time: float = 0.0):
	if !music_enabled:
		stream_paused = true
		return
		
	if stream != song:
			stream = song
			play(time)
	elif stream_paused:
		stream_paused = false
		if not playing:
			play(time)


func toggle_music(toggled_on : bool):
	music_enabled = toggled_on
	if music_enabled:
		stream_paused = false
		if not playing:
			play_song(title)
	else:
		stream_paused = true

func pause():
	stream_paused = true

func resume():
	stream_paused = false

func set_volume(value):
	AudioServer.set_bus_volume_db(0, value)
