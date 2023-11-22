extends TextureProgress


func _ready():
	self.max_value = Global.maxHpWall
	self.value = Global.hp
	

func _process(delta):
	self.max_value = Global.maxHpWall
	self.value = Global.hp
