extends CanvasLayer

class_name UI

@onready var lifes_label = %LifesLabel
@onready var game_lost_container = $GameLostContainer
@onready var level_won_container = $LevelWonContainer

# var Audios
@onready var bgm = $"../MusicPack/BGM"
@onready var game_lost = $"../MusicPack/GameLost"
@onready var game_won = $"../MusicPack/GameWon"
@onready var level_passed = $"../MusicPack/LevelPassed"


func set_lifes(lifes: int):
	lifes_label.text = "Lifes: %d" % lifes

func game_over():
	game_lost_container.show()
	bgm.stop()
	game_lost.play()
func _on_game_lost_button_pressed():
	get_tree().reload_current_scene()

