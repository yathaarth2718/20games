extends CharacterBody2D

const SPEED = 15
var dir := ([-1, 1])

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	randomize()
	var x = dir[randi() % dir.size()]
	print(x)
	velocity = Vector2(x * SPEED, 0)	
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	var col := move_and_collide(velocity)
	if col:
		var normal := col.get_normal()
		velocity = velocity.bounce(normal)
	
	
	
	
	
