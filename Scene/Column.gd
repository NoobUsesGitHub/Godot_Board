extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_close_button_pressed() -> void:
	var c =get_children()
	for i in c:
		i.queue_free()
	queue_free()
	


func _on_add_text_button_pressed() -> void:
	var l=Label.new()
	l.text="e"
	add_child(l)
