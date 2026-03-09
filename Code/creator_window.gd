extends Control

@export var type=Globals.typeOfCreator.CARD
@export var cardScene:PackedScene
@export var columnScene:PackedScene
var titleForObject:String
var textForObject:String

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if type==Globals.typeOfCreator.COLUMN:
		$"Panel/Task Desc".hide()
		$Panel/Title.text="New Column"
	else:
		$"Panel/Task Desc".show()
		$Panel/Title.text="New Card"
		$"Panel/Task Desc".text="Card Description"


func _on_line_edit_text_submitted(new_text: String) -> void:
	titleForObject=new_text


func _on_submit_pressed() -> void:
	titleForObject=$Panel/LineEdit.text
	if type == Globals.typeOfCreator.CARD:
		textForObject=$"Panel/Task Desc/TextEdit".text
		createCard()
	createColumn()

func createCard():
	var newCard=cardScene.instantiate()
	newCard.setTitleAndDesc(titleForObject,textForObject)
	get_parent().add_child(newCard)
	close()

func createColumn():
	var newCol=columnScene.instantiate()
	newCol.setTitle(titleForObject)
	get_parent().add_child(newCol)
	close()

func close():
	hide()
	queue_free()
