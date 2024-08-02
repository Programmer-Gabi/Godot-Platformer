extends Area2D

#Dragged in node holding command to autp-create
@onready var timer = $Timer # $Timer is a path from the Killzone to the Timer

#Body refers to body that entered the area AKA the player
func _on_body_entered(body):
	print("You died!")
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free() #Removing collision of player so they fall
	timer.start()
	

#Runs this code when the timer ends
func _on_timer_timeout():
	Engine.time_scale = 1.0
	get_tree().reload_current_scene() #Calls scene tree to restart scene
