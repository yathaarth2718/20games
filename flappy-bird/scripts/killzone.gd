extends RigidBody2D


const MOVE = 1
@onready var rigid_body_2d: RigidBody2D = $"."
@onready var bird: CharacterBody2D = $"../Bird"


func _physics_process(delta: float) -> void:
	rigid_body_2d.position.x -= MOVE
	rigid_body_2d.position.y = 0


func _on_area_2d_body_entered(body: Node2D) -> void:
	bird.queue_free()
