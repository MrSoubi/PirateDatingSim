extends Node

@onready var location_container: Node = $LocationContainer

@export var travel_event : TravelEvent

const KITCHEN = preload("res://LocationDefinitions/Kitchen.tres")

func _ready() -> void:
	travel_event.triggered.connect(set_location)
	set_location(KITCHEN)

func set_location(destination : LocationDefinition):
	empty_location_container()
	var new_location = destination.scene.instantiate()
	location_container.add_child(new_location)

func empty_location_container():
	for child in location_container.get_children():
		location_container.remove_child(child)
