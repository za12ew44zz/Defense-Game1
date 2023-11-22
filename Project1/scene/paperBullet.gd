extends RigidBody2D

var velocity = Vector2(1,0)
var speed = 200
var lifeTime = 2.5


func _ready():
	 add_to_group("bullet")
	 apply_impulse(Vector2(),Vector2(speed,0).rotated(get_angle_to(get_global_mouse_position())))
	
	 

func selfDestruct():
	yield(get_tree().create_timer(lifeTime),"timeout")
	queue_free()
	
	
	



func _on_paperBullet_body_entered(body):
	if body.is_in_group("zombie1"):
		queue_free()
		


