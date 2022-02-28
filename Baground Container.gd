extends Node2D

var score_threshold = 100
var b = 0
var backgrounds = [
	preload("res://Assets/nature background.png")
	,preload("res://Assets/town background.png")
	,preload("res://Assets/castle background.png")
	
]

func _physics_process(delta):
	if Global.score > score_threshold*(b+1):
		var B2 = Sprite.new()
		B2.centered = false
		B2.texture = backgrounds[wrapi(b, 0, backgrounds.size())]
		B2.name = "B2"
		add_child(B2)
		move_child(B2, 0)
		$Background.hide()
		
