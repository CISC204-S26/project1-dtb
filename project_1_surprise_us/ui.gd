extends CanvasLayer

@onready var label = $Label

var collected = 0

func _ready():
	add_to_group("ui")
	label.text = "Something feels missing here..."

func show_message(text):

	collected += 1
	label.text = text

	if collected == 3:
		trigger_end()

func trigger_end():

	await get_tree().create_timer(0.5).timeout

	label.text = "I finally remember everything..."
