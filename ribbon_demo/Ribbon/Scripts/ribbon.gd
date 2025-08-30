extends TabContainer

func _on_gui_input(event: InputEvent) -> void:
	if event.is_action_released("scroll_down"):
		if current_tab < get_tab_count() - 1:
			current_tab += 1
	elif event.is_action_released("scroll_up"):
		if current_tab > 0:
			current_tab -= 1
