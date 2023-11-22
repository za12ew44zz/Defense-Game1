extends Timer


var zombieLoad1 = preload("res://scene/zombie1.tscn")
var maxSpawn = 15
var spawnCount = 0
var spawnBool = true
var posZombieX = 1300
var posZombieY = 400

func _on_zombie_timeout():
	if spawnBool == true:
		spawnCount += 1
	if spawnCount <= maxSpawn and spawnBool == true:
		var rdn = rand_range(2,6)
		self.wait_time = rdn
		
		var zombie1 = zombieLoad1
		var zombie = zombie1.instance()
		zombie.position = Vector2(posZombieX,posZombieY)
		add_child(zombie)
		
	elif spawnCount >= maxSpawn and spawnBool == true:
		spawnBool = false
	else:
		print("Enemy")
	


	
