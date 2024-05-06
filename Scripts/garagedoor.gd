extends Area2D


@onready var openprompt = $GameManager/CanvasLayer/Label2


func _on_body_entered(body):
	openprompt.text = ("asdadsa")
	
