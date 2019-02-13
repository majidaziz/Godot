extends Spatial

var gate1 = 0
var gate2 = 0
var gate3 = 0
var gate4 = 0

func _ready():
	pass



func _on_Area_body_entered(body):
	if(gate2 == 0 and gate3 == 0 and gate4 == 0):
		gate1 = 1
		print("gate1 ON")

# 2 is 3
func _on_Area2_body_entered(body):
	if(gate1 == 1 and gate2 == 1 and gate4 == 0):
		gate3 = 1
		print("Gate3 ON")

# and 3 is 2
func _on_Area3_body_entered(body):
	if(gate1 == 1 and gate3 == 0 and gate4 == 0):
		gate2 = 1
		print("Gate2 ON")


func _on_Area4_body_entered(body):
	if(gate1 == 1 and gate2 == 1 and gate3 == 1):
		print("WIN")
