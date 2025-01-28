extends Node2D

@export var dialog_timeline : String

func start_timeline():
	Dialogic.start(dialog_timeline)



func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.is_pressed():
			start_timeline()
