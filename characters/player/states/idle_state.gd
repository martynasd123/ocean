extends State

class_name IdleState

func _ready():
	animated_sprite.play("idle")

func _flip_direction():
	animated_sprite.flip_h = not animated_sprite.flip_h

func _process(_delta):
	if Input.get_axis("move_left", "move_right") != 0:
		change_state.call("run")
	elif (Input.is_action_pressed("jump")):
		change_state.call("jump")
