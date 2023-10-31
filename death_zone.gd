extends Area2D

signal life_lost

func _on_body_entered(body):
	life_lost.emit()
