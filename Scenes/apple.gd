extends Area2D

@onready var game_manager = %GameManager
#@onready var ai_controller_2d = $"../../CharacterBody2D/AIController2D"




func _on_body_entered(body):
	if (body.name == "CharacterBody2D"):
		queue_free()
		game_manager.add_point()
		print(game_manager.points)
		#ai_controller_2d.reward += 1.0
	

