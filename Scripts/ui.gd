extends CanvasLayer

class_name UI
@onready var bgm = $"../MusicPack/BGM"
@onready var game_lost = $"../MusicPack/GameLost"
@onready var game_won = $"../MusicPack/GameWon"
@onready var level_passed = $"../MusicPack/LevelPassed"

@onready var lifes_label = %LifesLabel
@onready var game_lost_container = $GameLostContainer
@onready var level_won_container = $GameWonContainer

func set_lifes(lifes: int):
	lifes_label.text = "Lifes: %d" % lifes

func game_over():
	game_lost_container.show()
	$"../MusicPack/BGM".stop()
	$"../MusicPack/GameLost".play()
	LevelDefinitions.current_level = 1

func _on_game_lost_button_pressed():
	get_tree().reload_current_scene()

func on_level_won():
	$GameWonContainer.show()
	$"../MusicPack/BGM".stop()
	$"../MusicPack/GameWon".play()
func _on_level_won_button_pressed():
	LevelDefinitions.current_level = 2
	get_tree().reload_current_scene()
