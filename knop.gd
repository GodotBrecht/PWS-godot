extends StaticBody2D

signal button_pressed
signal button_released

var onButton = false

func _on_area_2d_body_entered(body: Node2D) -> void:
	onButton = true
	emit_signal("button_pressed")

func _on_area_2d_body_exited(body: Node2D) -> void:
	onButton = false
	emit_signal("button_released")
