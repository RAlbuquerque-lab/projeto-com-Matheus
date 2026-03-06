extends Area3D
@export var cartaui:Control



func _on_body_entered(body: Node3D) -> void:
	print("I am colliding with something")
	cartaui.show()
