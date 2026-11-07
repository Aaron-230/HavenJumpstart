extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

@onready var Sprite: AnimatedSprite2D = $Sprite

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
		
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		$Jump.play()

	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		Sprite.flip_h = false if direction >= 0 else true
		velocity.x = direction * SPEED
		Sprite.play("Run")
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		if not is_on_floor():
			Sprite.play("Jump")
		else:
			Sprite.play("Idle")

	move_and_slide()
