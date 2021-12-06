extends Node


var card_index_top := false setget set_card_index_top
var autosave := false setget set_autosave
var autosave_wait_time :int= 300 setget set_autosave_wait_time
var CM_default_duration : int = 0 setget set_CM_default_duration
var TD_default_duration : int = 0 setget set_TD_default_duration

func set_card_index_top(value:bool) ->void:
	card_index_top = value

func set_autosave(value:bool) ->void:
	autosave = value

func set_autosave_wait_time(value:int) ->void:
	autosave_wait_time = clamp(value, 300, 1800) ## Maximum de 30 min
	print(autosave_wait_time)
	
func set_CM_default_duration(value:int) ->void:
	CM_default_duration = value
	
func set_TD_default_duration(value:int) ->void:
	TD_default_duration = value




func get_data() -> Dictionary:
	var data := {
		"card_index_top":card_index_top,
		"autosave": autosave,
		"autosave_wait_time": autosave_wait_time,
		"CM_default_duration": CM_default_duration,
		"TD_default_duration": TD_default_duration
	}
	return data


func set_data(data:Dictionary) -> void:
	set_card_index_top(data["card_index_top"])
	set_autosave(data["autosave"])
	set_autosave_wait_time(data["autosave_wait_time"])
	set_CM_default_duration(data["CM_default_duration"])
	set_TD_default_duration(data["TD_default_duration"])
