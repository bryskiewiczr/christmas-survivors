extends Area2D


func _physics_process(delta):
	var enemies_in_range = get_overlapping_bodies()
	if enemies_in_range.size() > 0:
		var target_enemy = enemies_in_range.front()  # could be enemies_in_range[0] as well
		look_at(target_enemy.global_position)
