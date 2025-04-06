extends State

class_name PlayerJumpState

func _finished():
	change_state.call("fall")

func _ready():
	animated_sprite.play("jump")
	animated_sprite.animation_finished.connect(_finished)
	persistent_state.velocity.y = -300
	
func _process(_delta):
	pass
