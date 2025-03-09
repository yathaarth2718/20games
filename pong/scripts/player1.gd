extends CharacterBody2D

const SPEED = 350

func getYDir():
	return Input.get_action_strength("playerOneDown") - Input.get_action_strength("playerOneUp")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	
	velocity = Vector2(0, SPEED * getYDir())
	
	move_and_slide()
	
