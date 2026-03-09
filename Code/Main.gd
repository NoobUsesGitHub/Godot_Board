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

func CreateFromList(ar: Array[String]):
	for i in ar:
		$HBoxContainer.add_child(Factory.newCol(i))

func _on_button_pressed() -> void:
	var creator=creatorScene.instantiate()
	creator.type=Globals.typeOfCreator.COLUMN
	$HBoxContainer.add_child(creator)
