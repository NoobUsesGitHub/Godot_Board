extends Control

@export var type=1
var titleForObject:String
var textForObject:String
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if type==1:
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
	if type!=1:
		textForObject=$"Panel/Task Desc/TextEdit".text
		createCard()
	createColumn()

func createCard():
	
	close()

func createColumn():
	
	close()

func close():
	hide()
	queue_free()
