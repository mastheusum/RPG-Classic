extends CharacterBody2D

var speed := 300.0
var direction := Vector2.ZERO

func _physics_process(delta: float) -> void:
	direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * speed
	move_and_slide()
