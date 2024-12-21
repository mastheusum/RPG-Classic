extends Node

class_name CharacterStatus

var level : int = 1
var experience : float = 0
@onready var experient_to_next_level : float = level * 5
var strength : int = 1
var vitality : int = 1
var agility : int = 1
var dexterity : int = 1
var intelligence : int = 1
var wisdom : int = 1
var attribute_points : int = 3

func _ready() -> void:
	$Values/Level.text = str(level)
	$Values/Strength.text = str(strength)
	$Values/Vitality.text = str(vitality)
	$Values/Agility.text = str(agility)
	$Values/Dexterity.text = str(dexterity)
	$Values/Intelligence.text = str(intelligence)
	$Values/Wisdom.text = str(wisdom)
	$Values/Points.text = str(attribute_points)

func level_up():
	level += 1
	attribute_points += 3
	experient_to_next_level = (level * level) + (2 * level) + 3
	$Values/Level.text = str(level)
	$Values/Points.text = str(attribute_points)

func gain_experience(amount : float):
	experience += amount
	if experience >= experient_to_next_level:
		level_up()

func add_strength():
	if attribute_points > 0:
		attribute_points -= 1
		strength += 1
		$Values/Strength.text = str(strength)
		$Values/Points.text = str(attribute_points)
		
func add_vitality():
	if attribute_points > 0:
		attribute_points -= 1
		vitality += 1
		$Values/Vitality.text = str(vitality)
		$Values/Points.text = str(attribute_points)
		
func add_agility():
	if attribute_points > 0:
		attribute_points -= 1
		agility += 1
		$Values/Agility.text = str(agility)
		$Values/Points.text = str(attribute_points)
		
func add_dexterity():
	if attribute_points > 0:
		attribute_points -= 1
		dexterity += 1
		$Values/Dexterity.text = str(dexterity)
		$Values/Points.text = str(attribute_points)
		
func add_intelligence():
	if attribute_points > 0:
		attribute_points -= 1
		intelligence += 1
		$Values/Intelligence.text = str(intelligence)
		$Values/Points.text = str(attribute_points)
		
func add_wisdom():
	if attribute_points > 0:
		attribute_points -= 1
		wisdom += 1
		$Values/Wisdom.text = str(wisdom)
		$Values/Points.text = str(attribute_points)
