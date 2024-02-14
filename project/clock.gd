extends Node2D

#const SYSTEM_TIME := 0
#const RANDOM_TIME := 1
enum StartTimeMode { SYSTEM_TIME, RANDOM_TIME, FIXED_TIME}

## what time to use for the starting time of the clock
@export var start_time := StartTimeMode.SYSTEM_TIME
@export_group("Fixed Start Time")
@export_range(0, 11) var start_hour := 0
@export_range(0, 59) var start_minute := 0
@export_range(0, 59) var start_second := 0
var seconds:= 0.0
@onready var second_arm := $SecondArm as Node2D
@onready var minute_arm := $MinuteArm as Node2D
@onready var hour_arm := $HourArm as Node2D

func _ready() -> void:
	if start_time == StartTimeMode.RANDOM_TIME:
		seconds = randf_range(0.0, 43200.0)
	else:
		if start_time != StartTimeMode.FIXED_TIME:
			var current_time := Time.get_time_dict_from_system()
			seconds = float(
				current_time.second +
				current_time.minute * 60 +
				current_time.hour * 3600
			)
		if start_time != StartTimeMode.SYSTEM_TIME:
			seconds = start_second + start_minute * 60 + start_second *3600 

func _process(delta: float) -> void:
	seconds += delta
	second_arm.rotation = fmod(seconds, 60.0) * TAU / 60.0
	minute_arm.rotation = fmod(seconds / 60.0, 60.0) * TAU / 60.0
	hour_arm.rotation = fmod(seconds / 3600.0, 12.0) * TAU / 12.0
