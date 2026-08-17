extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -500.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	if Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
		update_animation("walk")
		$Sprite2D.flip_h = true
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
		$Sprite2D.flip_h = false
		update_animation("walk")
	else:
		velocity.x = 0
		update_animation("idle")
	move_and_slide()

func update_animation(animation):
	$AnimationPlayer.play(animation)
