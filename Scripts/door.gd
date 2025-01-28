extends Area2D

@export var destination : LocationDefinition
@export var travel_event : TravelEvent

@export var conditions : Array[Condition]

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.pressed:
			travel_event.triggered.emit(destination)
