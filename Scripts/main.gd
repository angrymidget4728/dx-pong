extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	self.position = get_viewport_rect().size/2


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
