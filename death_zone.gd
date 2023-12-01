extends Area2D

class_name DeathZone

signal life_lost

@onready var ball_passing_paddle = $"../MusicPack/BallPassingPaddle"

func _on_body_entered(body):
	life_lost.emit()
	ball_passing_paddle.play()
