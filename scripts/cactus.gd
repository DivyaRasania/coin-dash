extends Area2D

var screensize = Vector2.ZERO
var active = false

func _ready():
	await get_tree().create_timer(0.2).timeout
	active = true

func _on_area_entered(area):
	if area.is_in_group("player"):
		while not active:
			position = Vector2(randi_range(0, screensize.x), randi_range(0, screensize.y))
			if global_position.distance_to(area.global_position) > 150:
				active = true
	
	if area.is_in_group("obstacles"):
		position = Vector2(randi_range(0, screensize.x), randi_range(0, screensize.y))
	if area.is_in_group("obstacles"):
		position = Vector2(randi_range(0, screensize.x), randi_range(0, screensize.y))
