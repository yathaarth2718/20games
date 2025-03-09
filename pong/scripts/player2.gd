extends CharacterBody2D

const SPEED = 300

func getYDir():
	return Input.get_action_strength("playerTwoDown") - Input.get_action_strength("playerTwoUp")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	velocity = Vector2(0, SPEED * getYDir())
	
	move_and_slide()
