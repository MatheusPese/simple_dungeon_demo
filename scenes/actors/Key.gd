extends Area


func _ready():
	add_to_group("key")
	set_physics_process(true)
	pass

func _physics_process(delta):
	self.rotation_degrees = self.rotation_degrees + Vector3(0.0, 1.0, 0.0)
	
	if(get_overlapping_areas().size() > 0): # Player checking area
		get_node("/root/global").player_keys += 1
		queue_free()


