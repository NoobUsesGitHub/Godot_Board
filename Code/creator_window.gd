extends Control

@export var type=Globals.typeOfCreator.CARD

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
		return
	createColumn()
	return

func createCard():
	get_parent().add_child(Factory.newCard(titleForObject,textForObject))
	close()

func createColumn():
	get_parent().add_child(Factory.newCol(titleForObject))
	close()

func close():
	hide()
	queue_free()


func _on_cancel_pressed() -> void:
	close()
