extends MarginContainer

var title :String 
var  desc: String
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	setTitleAndDesc(title,desc)

func setTitleAndDesc(t,d)->void:
	title=t
	desc=d
	$PanelContainer/VBoxContainer/title.text=title
	$PanelContainer/VBoxContainer/desc.text=desc

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
