extends Area2D

@export var message = "Found an item..."

func _on_body_entered(body):

	if body.name == "Player":

		var ui = get_tree().get_first_node_in_group("ui")

		ui.show_message("A dusty old book...")

		queue_free()
