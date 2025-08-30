extends Panel

const PPI_CONVERTION: float = 25.4 # inch to mm
@export var page_size: Vector2 = Vector2(210, 297):
	set(value):
		page_size = value
		await ready
		set_page_size(value)
@export var screen_diagonal_inches: float = 27.0
var screen_size = DisplayServer.screen_get_size()
var screen_ppi: float = sqrt(pow(screen_size.x, 2.0) + pow(screen_size.y, 2.0)) / screen_diagonal_inches
@onready var margin_container: MarginContainer = $VBoxContainer/MarginContainer

func set_page_size(value: Vector2) -> void:
	var page_size_px = value * screen_ppi / PPI_CONVERTION
	margin_container.custom_minimum_size = page_size_px
