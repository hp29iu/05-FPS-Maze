extends KinematicBody

var Player = null
var damaging = false
export var damage = 1

func _physics_process(_delta):
	if Player == null:
		Player = get_node_or_null("/root/Game/Player")
	if Player != null:
		look_at(Player.global_transform.origin,Vector3.UP)
	if damaging:
		Global.update_damage(-damage)
			

func _on_Area_body_entered(body):
	if body.name == "Player":
		var sound = get_node_or_null("/root/Game/Robot")
		if sound != null:
			sound.playing = true


func _on_Kill_body_entered(body):
	if body.name == ("Player"):
		damaging = true
		#var _scene = get_tree().change_scene("res://UI/Lose.tscn")


func _on_Kill_body_exited(body):
	if body.name == ("Player"):
		damaging = false
