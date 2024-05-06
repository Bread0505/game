extends Area2D

@onready var prompt = $"../GameManager/CanvasLayer/Label2"

var abletoenter = false

func _on_body_entered(body):
	prompt.text = "Press E To Enter"
	abletoenter = true
	
func _process(delta):
	if abletoenter:
		if Input.is_action_pressed('E'):
			get_tree().change_scene_to_file("res://Scenes/garageinside.tscn")
			
func _on_body_exited(body):
	prompt.text = ""
	abletoenter = false
