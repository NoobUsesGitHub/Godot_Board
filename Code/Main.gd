extends Control
var leftestColumn=0
var SPACE=1
@export var creatorScene :PackedScene
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	var creator=creatorScene.instantiate()
	creator.type=Globals.typeOfCreator.COLUMN
	find_child('HBoxContainer').add_child(creator)
