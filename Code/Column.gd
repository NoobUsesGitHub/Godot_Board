extends Control

@export var creatorScene : PackedScene
var title :String
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	setTitle(title)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_close_button_pressed() -> void:
	var c =get_children()
	for i in c:
		i.queue_free()
	queue_free()

func setTitle(t)->void:
	$MarginContainer/HBoxContainer/PanelContainer/Title.text=t

func _on_add_text_button_pressed() -> void:
	var creator=creatorScene.instatiate()
	creator.type=Globals.typeOfCreator.CARD
	add_child(creator)
