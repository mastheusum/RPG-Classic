extends StaticBody2D

@export var max_life : int
var _life

func _ready() -> void:
	_life = max_life

func take_damage(damage):
	_life -= damage
	if _life <= 0:
		death()

func death():
	$CollisionShape2D.disabled = true
	$ColorRect.visible = false
