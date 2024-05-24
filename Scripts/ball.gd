extends Area2D

var START_DIR : Vector2
var velocity : Vector2

@export var SPEED : float = 100

signal bound_collided(bound_idx : bool)

# Called when the node enters the scene tree for the first time.
func _ready():
	var hori = randf_range(-1, 1)
	var verti = randf_range(-hori, hori)
	START_DIR = Vector2(hori, verti).normalized()
	#linear_velocity = START_DIR * 100
	velocity = SPEED * START_DIR


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += velocity * delta

func _on_area_entered(area):
	if area.is_in_group("P1Bound"):
		bound_collided.emit(true)
	if area.is_in_group("P2Bound"):
		bound_collided.emit(false)
	queue_free()


func _on_body_entered(body):
	if body.is_in_group("Barrier"):
		velocity.y = -velocity.y
	if body.is_in_group("Player"):
		velocity.x = -velocity.x * 0.1
		velocity.y += body.velocity.y * 0.1
