extends CharacterBody2D

const GRAVITY: float = 1900.0
const POWER: float = -400.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	velocity.y += GRAVITY * delta
	if Input.is_action_just_pressed("fly"):
		velocity.y = POWER
	move_and_slide()
