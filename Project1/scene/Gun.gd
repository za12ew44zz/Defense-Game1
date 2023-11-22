extends KinematicBody2D

var bulletPaperPath = preload("res://scene/paperBullet.tscn")
var velocity = Vector2()
var rateFire = 2
var canFire = true
func getRotate():
	look_at(get_global_mouse_position())
	
	
	
func _process(delta):
	getRotate()
	shoot()
	
	
	
func shoot():
	if Input.is_action_pressed("left_mouse") and canFire == true:
		canFire = false
		var bulletPaper = bulletPaperPath.instance()
		bulletPaper.position = get_global_position()
		bulletPaper.rotation =  get_angle_to(get_global_mouse_position())
		
		get_parent().add_child(bulletPaper)
		
		yield(get_tree().create_timer(rateFire),"timeout")
		canFire = true







