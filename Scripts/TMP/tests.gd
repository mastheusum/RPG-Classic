extends Node2D

var player = null
var player_base = preload("res://Instances/character_base.tscn")
var char_stats = preload("res://Instances/character_status.tscn")
var char_talent = preload("res://Instances/talent_tree.tscn")

func _on_add_char_pressed() -> void:
	var char_name : String = $GroupManagerCanvas/NewChar/CharName.text
	$GroupManagerCanvas/NewChar/CharName.text = ''
	if (not char_name in GroupManager.group_status.keys()) and char_name.length() >= 4:
		GroupManager.add_character(char_name, char_stats.instantiate(), char_talent.instantiate())

	if not player:
		player = player_base.instantiate()
		add_child(player)
