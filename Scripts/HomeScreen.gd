extends Control

func _on_start_pressed() -> void:
	Game.resetCoins()
	get_tree().change_scene_to_file("res://Scenes/Level.tscn")

func _on_exit_pressed() -> void:
	get_tree().quit()
