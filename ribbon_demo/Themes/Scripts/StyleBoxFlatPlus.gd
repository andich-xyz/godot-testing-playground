class_name StyleBoxFlatPlus extends StyleBoxFlat

const OFFICE_THEME = preload("res://ribbon_demo/Themes/Office_Theme.tres")

enum ColorType {MAIN, ACCENT, HIGHLIGHT, DISABLED, PAGE}
@export var color_type: ColorType
	#set(value):
		#color_type = value
		#set_background_color(value)
#
#func set_background_color(value: int) -> void:
	#match value:
		#ColorType.MAIN:
			#bg_color = OFFICE_THEME.main_color
		#ColorType.ACCENT:
			#bg_color = OFFICE_THEME.accent_color
		#ColorType.HIGHLIGHT:
			#bg_color = OFFICE_THEME.highlight_color
		#ColorType.DISABLED:
			#bg_color = OFFICE_THEME.diabled_color
