extends Control

var index = 0

func _ready() -> void:
	for item in $Container.get_children():
		item.visible = false
	$Container.get_child(index).visible = true

func _unhandled_key_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_status_control"):
		visible = not visible

func _on_left_button_pressed() -> void:
	$Container.get_child(index).visible = false
	index = index - 1 if index - 1 >= 0 else $Container.get_child_count() - 1
	$Container.get_child(index).visible = true


func _on_right_button_pressed() -> void:
	$Container.get_child(index).visible = false
	index = (index + 1) % $Container.get_child_count()
	$Container.get_child(index).visible = true
