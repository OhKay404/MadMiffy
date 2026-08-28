extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$VolumeAdjust.value = ($VolumeAdjust.min_value + $VolumeAdjust.max_value) / 2


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_volume_adjust_value_changed(value) -> void:
	AudioServer.set_bus_volume_db(0, value)
