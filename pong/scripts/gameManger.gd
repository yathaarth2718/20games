extends Node


var scoreP1 = 0; var scoreP2 = 0
@onready var scoreLabelP1: Label = $scoreLabelP1
@onready var scoreLabelP2: Label = $scoreLabelP2

func addPointP1() -> void:
	scoreP1 += 1
	scoreLabelP1.text = "P1 Score: " + str(scoreP1)
	
func addPointP2() -> void:
	scoreP2 += 1
	scoreLabelP2.text = "P2 Score: " + str(scoreP2)
