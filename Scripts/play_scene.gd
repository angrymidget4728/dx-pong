extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	#$Ball.connect()
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_ball_bound_collided(bound_idx):
	if bound_idx:
		print("update p2 score")
	else:
		print("update p1 score")
