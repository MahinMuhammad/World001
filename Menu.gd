extends Control

export var mainGameScene : PackedScene


func _on_New_Game_Button_button_up():
	get_tree().change_scene(mainGameScene.resource_path)


func _on_Exit_Button_button_up():
	get_tree().quit()
