extends State

class_name PlayerFallState

var g = 9.8 * 1e+2

func _ready():
	animated_sprite.play("fall")
	
func _physics_process(_delta):
	persistent_state.velocity.y += _delta * g
	persistent_state.velocity.x = Input.get_axis("move_left", "move_right") * speed * _delta
	persistent_state.move_and_slide()
	if persistent_state.is_on_floor():
		if persistent_state.velocity.x == 0:
			change_state.call("idle")
		else:
			change_state.call("run")
