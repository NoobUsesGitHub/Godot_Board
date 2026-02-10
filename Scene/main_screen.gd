extends Node2D
var leftestColumn=0
var SPACE=1
@export var column_scene :PackedScene
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	var newColumn = column_scene.instantiate()
	find_child('HBoxContainer').add_child(newColumn)
