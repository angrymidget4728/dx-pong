extends CharacterBody2D

const SPEED = 300.0
@export var key : Keys

var prev_pos : Vector2
var insta_speed : Vector2 = Vector2(0,0)
var clamp_position : Vector2

func _ready():
	prev_pos = global_position
	

func _process(_delta):
	#if Input.is_action_pressed(key.up):
		#position.y += SPEED * delta * -float(Input.is_action_pressed(key.up))
	#if Input.is_action_pressed(key.down):
		#position.y += SPEED * delta * float(Input.is_action_pressed(key.down))	
	#
	##if prev_pos != global_position:
	#insta_speed = (global_position - prev_pos)/delta
	#prev_pos = global_position
	
	if Input.is_action_pressed(key.up):
		velocity.y = SPEED * -float(Input.is_action_pressed(key.up))
	elif Input.is_action_pressed(key.down):
		velocity.y = SPEED * float(Input.is_action_pressed(key.down))
	else:
		velocity.y = 0
	move_and_slide()
