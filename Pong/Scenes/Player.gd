extends KinematicBody2D

var speed = 800

func _physics_process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("Up"):
		velocity.y -= 1
	if Input.is_action_pressed("Down"):
		velocity.y += 1
	move_and_slide(velocity * speed)
