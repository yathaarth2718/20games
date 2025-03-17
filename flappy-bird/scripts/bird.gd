extends CharacterBody2D

const GRAVITY = 1000
const MAX_VEL = 600
const JUMP_SPEED = -500

var flying :bool = false
var falling :bool = false

const START_POS = Vector2(100, 400)

func _ready() -> void:
	reset()


func reset() -> void:
	flying = false
	falling = false
	position = START_POS
	set_rotation(0)



func _physics_process(delta: float) -> void:
	if flying or falling:
		velocity.y += GRAVITY * delta
		
		#term vel
		if velocity.y > MAX_VEL:
			velocity.y = MAX_VEL
		if flying:
			set_rotation(deg_to_rad(velocity.y * 0.05))
			$AnimatedSprite2D.play()
		elif falling:
			set_rotation(PI/2)
			$AnimatedSprite2D.stop()
			
		move_and_collide(velocity * delta)
	else:
		$AnimatedSprite2D.stop()
		
	
func flap():
	velocity.y = JUMP_SPEED
