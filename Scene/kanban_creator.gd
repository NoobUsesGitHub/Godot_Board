extends Control

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_column_name_text_submitted(new_text: String) -> void:
	var lE= LineEdit.new()
	lE.text_submitted.connect(_on_column_name_text_submitted)
	lE.placeholder_text="column name"
	$PanelContainer/HBoxContainer/VBoxContainer.add_child(lE)
	lE.grab_focus(true)


func _on_create_kanban_pressed() -> void:
	var colList= colNameList()
	var main=load("res://Scene/Main.tscn").instantiate()
	main.CreateFromList(colList)
	get_parent().add_child(main)
	main.setTitle($PanelContainer/HBoxContainer/VBoxContainer2/KanbanName.text)
	queue_free()
	
func colNameList()-> Array[String]:
	var children=$PanelContainer/HBoxContainer/VBoxContainer.get_children()
	var childrenText: Array[String]
	for i in children:
		childrenText.append(i.text)
	return childrenText
