extends Area3D
@export var cartaui : Control
@export var interaction_ui : CanvasLayer

var is_globe_touch : bool = false


func _on_body_entered(_body:Node3D) -> void:
	print("I am colliding with something")
	interaction_ui.show()
	is_globe_touch = true

func _on_body_exited(_body:Node3D) -> void:
	print("I am exiting the area")
	is_globe_touch = false
	interaction_ui.hide()
	cartaui.hide()
	

func _input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("interaction") and is_globe_touch:
		cartaui.visible = not cartaui.visible
		interaction_ui.visible = not interaction_ui.visible
