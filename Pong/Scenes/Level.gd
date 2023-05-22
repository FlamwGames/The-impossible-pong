extends Node

var playerScore = 0
var enemyScore = 0

func _on_PlayerScore_body_entered(body):
	$Ball.position = Vector2(640, 360)
	$WhatSound.play()
	playerScore +=1


func _on_EnemyScore_body_entered(body):
	$Ball.position = Vector2(640, 360)
	$BadSound.play()
	enemyScore +=1

func _process(delta):
	$PlayerScoreText.text = str(playerScore)
	$EnemyScoreText.text = str(enemyScore)
