extends Control


func _ready():
	update()

func _physics_process(_delta):
	if Global.updated:
		Global.updated = false
		update()
	if Global.damaged:
		Global.damaged = false
		update()

func update():
	$Ammo.text = "Ammo: " + str(Global.ammo)
	$Health.text = "Health: " + str(Global.health) + "%"
	$Score.text = "Score: " + str(Global.score)
	
