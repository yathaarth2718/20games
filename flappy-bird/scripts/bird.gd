extends CharacterBody2D

const GRAVITY = 10000
const JUMP_SPEED = 7000

func _physics_process(delta: float) -> void:
	velocity.y = GRAVITY * delta
	
	if Input.is_action_just_pressed("jump"):
		velocity.y += -JUMP_SPEED
	
	
	move_and_slide()
	
