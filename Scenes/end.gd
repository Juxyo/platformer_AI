extends Area2D

@export var target_level : PackedScene
@onready var ai_controller_2d = $"../../CharacterBody2D/AIController2D"

func _on_body_entered(body):
	if (body.name == "CharacterBody2D"):
		queue_free()
		print("you win!")
		get_tree().change_scene_to_packed(target_level)
		ai_controller_2d.reward += 1.0

func _on_target_body_entered(_body: Node2D) -> void:
	ai_controller_2d.reward += 1.0
