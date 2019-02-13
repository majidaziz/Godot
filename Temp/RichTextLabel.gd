extends RichTextLabel

var s = 0
onready var timer = get_node("Timer")

func _process(delta):
	if(s == 1):
		set_text("ON YOUR MARK")
	if(s == 2):
		set_text("GET SET")
	if(s == 3):
		set_text("GO")
	
		

func _on_Timer_timeout():
	s += 1
	if(s == 4):
		timer.stop()
	pass # replace with function body
