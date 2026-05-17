extends Area2D

@export var message = "Found something..."

func _on_body_entered(body):

	if body.name == "Player":

		var ui = get_tree().get_first_node_in_group("ui")

		ui.show_message("You found the old key...")

		queue_free()
