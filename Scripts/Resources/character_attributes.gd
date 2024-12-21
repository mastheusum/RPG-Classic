extends Resource

class_name CharacterAttributes

@export var character_name : String
@export var level : int :
	set(val):
		level = val
		life_points = 10 + (level * 2) + (vitality * 1.5)
@export var strength : int :
	set(val):
		strength = val
		attack_power = strength * 0.75 + dexterity * 0.25
		critical_chance = (dexterity * 0.5) / (100 * strength)
@export var vitality : int :
	set(val):
		vitality = val
		life_points = 10 + (level * 2) + (vitality * 1.5)
@export var agility : int :
	set(val):
		agility = val
		turn_speed = (agility + intelligence) * 0.5
@export var dexterity : int :
	set(val):
		dexterity = val
		critical_chance = (dexterity * 0.5) / (100 * strength)
@export var intelligence : int :
	set(val):
		intelligence = val
		turn_speed = (agility + intelligence) * 0.5
		magic_power = wisdom * 0.75 + intelligence * 0.25
		mana_points = 2 * intelligence + 3
@export var wisdom : int :
	set(val):
		wisdom = val
		magic_power = wisdom * 0.75 + intelligence * 0.25

var attack_power : float
var life_points : float
var critical_chance : float
var turn_speed : float
var mana_points : float
var magic_power : float
