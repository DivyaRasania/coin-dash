extends Area2D

var screensize = Vector2.ZERO
var active = false

func _ready():
	await get_tree().create_timer(0.2).timeout
	active = true

func _on_area_entered(area):
	if area.is_in_group("player"):
		position = Vector2(randi_range(0, screensize.x), randi_range(0, screensize.y))
