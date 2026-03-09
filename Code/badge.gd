extends PanelContainer

@export var type=-1
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if type == -1:
		type=1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if type==1:
		changeColor(Color.REBECCA_PURPLE)

func changeColor(a :Color):
	var sb=get_theme_stylebox("panel").duplicate()
	sb.set_bg_color(a)
	add_theme_stylebox_override("panel", sb)

func changeText(t :String):
	var l=find_child("Label")
	l.set_text(t)	
