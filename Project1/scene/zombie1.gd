extends RigidBody2D


var hp = 1


func _process(delta):
	apply_impulse(Vector2(),Vector2(-2,0))
	



#


		




func _on_zombie1_body_entered(body):
	if body.is_in_group("bullet"):
		hp -= 1
		
	if body.is_in_group("bullet") and hp == 0:
		Global.gold += 1
		Global.zombieKilledEnd += 1
		queue_free()
	elif body.is_in_group("wall"):
		
		Global.hp -= 1
		
		queue_free()
