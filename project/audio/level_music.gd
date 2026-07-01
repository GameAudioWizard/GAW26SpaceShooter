class_name LevelMusic
extends AudioStreamPlayer



var boss_track_is_playing: bool = false
var boss_transition_number: int = 0
var is_waiting_on_ink_interaction: bool = false

@export var boss_track: String
@export var boss_titles: Array[String]

@onready var _audio_stream_player: AudioStreamPlayer = self


func on_send_layered_music_clip(playlist_name: String, clip_name: String) -> void:
	print(playlist_name, clip_name)


func on_send_music_clip(clip_name: String) -> void:
	if _audio_stream_player["parameters/switch_to_clip"] == clip_name:
		return
	if boss_transition_number > 0:
		return
	if is_waiting_on_ink_interaction:
		return
	else:
		_switch_to_clip(clip_name)


func _switch_to_clip(clip_name: String) -> void:
	_audio_stream_player["parameters/switch_to_clip"] = clip_name
	print("_switch to clip - ", clip_name)
	if !_audio_stream_player.playing:
		_audio_stream_player.play()


func stop_playing_music() -> void:
	_audio_stream_player.stop()


func set_initial_clip(_new_clip: String) -> void:
	pass  #self.initial


func on_boss_next_phase() -> void:
	print("boss phase change name, transition number", boss_transition_number)
	var next_boss_clip: String = boss_titles[boss_transition_number]
	boss_transition_number += 1
	_switch_to_clip(next_boss_clip)
