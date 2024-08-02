extends Area2D #This just means the script has been created for an Area 2D node

#Tutorial Code
@onready var game_manager = %GameManager
@onready var animation_player = $AnimationPlayer

#Green arrow on code line means that functions is triggered by a signal
func _on_body_entered(body):
	game_manager.add_point()
	animation_player.play("pickup") #Removes coin from scene




#Default code
# Called when the node enters the scene tree for the first time.
#func _ready():
	#pass # Replace with function body. Pass means do nothing
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass


