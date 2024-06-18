extends AIController2D

var move = Vector2.ZERO

@onready var character_body_2d = $".."
@onready var finish = $"../../Collectibles/Finish"

func get_obs() -> Dictionary:
	var obs:= [
		character_body_2d.position.x,
		character_body_2d.position.y,
		finish.position.x,
		finish.position.y
	]
	return {"obs":obs }



func get_reward() -> float:	
	
	return reward
	
func get_action_space() -> Dictionary:

	return {
		"example_actions_continous" : {
			"size": 2,
			"action_type": "continuous"
		},
		}
	
func set_action(action) -> void:	
	move.x = action["move"][0]
	move.y = action["jump"][1]	
