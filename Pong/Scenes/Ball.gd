extends KinematicBody2D

var speed = 600
var velocity = Vector2.ZERO

func _ready():
	$AnimationPlayer.play("Idle")
	randomize()
	velocity.x = [-1,1][randi() % 2]
	velocity.y = [-0.8,0.8][randi() % 2]

func _physics_process(delta):
	var collision_object = move_and_collide(velocity * speed * delta)
	if collision_object:
		velocity = velocity.bounce(collision_object.normal)
		$BounceSound.play()
		$AnimationPlayer.play("Bounce")



func _on_AnimationPlayer_animation_finished(Bounce):
	$AnimationPlayer.play("Idle")
