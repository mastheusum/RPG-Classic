extends Node

class_name CharacterStatus

@export var attributes : CharacterAttributes
var experience : float = 0
var experient_to_next_level : float = 999
var attribute_points : int = 3

func _ready() -> void:
	experient_to_next_level = (attributes.level ** 2) + (2 * attributes.level) + 5
	
	$Panel/Experience.min_value = 0
	$Panel/Experience.max_value = experient_to_next_level
	$Panel/Experience.value = experience
	
	$Labels/Name.text = "[b][i]%s"%attributes.character_name
	$Values/Level.text = str(attributes.level)
	$Values/Strength.text = str(attributes.strength)
	$Values/Vitality.text = str(attributes.vitality)
	$Values/Agility.text = str(attributes.agility)
	$Values/Dexterity.text = str(attributes.dexterity)
	$Values/Intelligence.text = str(attributes.intelligence)
	$Values/Wisdom.text = str(attributes.wisdom)
	$Values/Points.text = str(attribute_points)
	
	$Panel/Values/Power.text = "[right] %.2f" % attributes.attack_power
	$Panel/Values/Critical.text = "[right] %.2f" % attributes.critical_chance
	$Panel/Values/Life.text = "[right] %d" % attributes.life_points
	$Panel/Values/Magic.text = "[right] %.2f" % attributes.magic_power
	$Panel/Values/Mana.text = "[right] %d" % attributes.mana_points
	$Panel/Values/TurnSpeed.text = "[right] %.2f" % attributes.turn_speed

func level_up():
	attributes.level += 1
	attribute_points += 3
	
	$Panel/Experience.min_value = experient_to_next_level
	$Panel/Experience.value = experience
	experient_to_next_level = (attributes.level**2) + (2 * attributes.level) + 5
	$Panel/Experience.max_value = experient_to_next_level
	
	$Values/Level.text = str(attributes.level)
	$Values/Points.text = str(attribute_points)
	

func gain_experience(amount : float):
	experience += amount
	if experience >= experient_to_next_level:
		level_up()

func add_strength():
	if attribute_points > 0:
		attribute_points -= 1
		attributes.strength += 1
		$Values/Strength.text = str(attributes.strength)
		$Values/Points.text = str(attribute_points)
		$Panel/Values/Power.text = "[right] %.2f" % attributes.attack_power
		
func add_vitality():
	if attribute_points > 0:
		attribute_points -= 1
		attributes.vitality += 1
		$Values/Vitality.text = str(attributes.vitality)
		$Values/Points.text = str(attribute_points)
		$Panel/Values/Life.text = "[right] %d" % attributes.life_points
		
func add_agility():
	if attribute_points > 0:
		attribute_points -= 1
		attributes.agility += 1
		$Values/Agility.text = str(attributes.agility)
		$Values/Points.text = str(attribute_points)
		$Panel/Values/TurnSpeed.text = "[right] %.2f" % attributes.turn_speed
		
func add_dexterity():
	if attribute_points > 0:
		attribute_points -= 1
		attributes.dexterity += 1
		$Values/Dexterity.text = str(attributes.dexterity)
		$Values/Points.text = str(attribute_points)
		$Panel/Values/Critical.text = "[right] %.2f" % attributes.critical_chance
		
func add_intelligence():
	if attribute_points > 0:
		attribute_points -= 1
		attributes.intelligence += 1
		$Values/Intelligence.text = str(attributes.intelligence)
		$Values/Points.text = str(attribute_points)
		$Panel/Values/Mana.text = "[right] %d" % attributes.mana_points

func add_wisdom():
	if attribute_points > 0:
		attribute_points -= 1
		attributes.wisdom += 1
		$Values/Wisdom.text = str(attributes.wisdom)
		$Values/Points.text = str(attribute_points)
		$Panel/Values/Magic.text = "[right] %.2f" % attributes.magic_power
