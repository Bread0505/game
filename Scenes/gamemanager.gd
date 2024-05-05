extends Node

var score = 0

@onready var score_label = $Label

func addmoney():
	score += 1 
	score_label.text = ("$") + str(score)
