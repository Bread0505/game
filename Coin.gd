extends Area2D

@onready var game_manager = $"../GameManager" 

func _on_body_entered(body):
	print("+1 coins!1!")
	game_manager.addmoney()
	queue_free()
