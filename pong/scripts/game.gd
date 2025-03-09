extends Node2D

@onready var timerP1: Timer = $goalWalls/leftArea/Timer
@onready var timerP2: Timer = $goalWalls/rightArea/Timer
@onready var gameManager = %GameManger
var ball_prefab = preload("res://scenes/ball.tscn")
var ball

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	ball = ball_prefab.instantiate()
	add_child(ball)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func reset():
	ball.queue_free()
	ball = ball_prefab.instantiate()
	add_child(ball)

func _on_left_area_body_entered(body: Node2D) -> void:
	gameManager.addPointP2()
	timerP1.start()
	
func _on_timerP1_timeout() -> void:
	reset()
	


func _on_right_area_body_entered(body: Node2D) -> void:
	gameManager.addPointP1()
	timerP2.start()
	
	
func _on_timer_timeout() -> void:
	reset()
