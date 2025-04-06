extends State

class_name PlayerJumpState

func _finished():
	change_state.call("fall")

func _ready():
	animated_sprite.play("jump")
	animated_sprite.animation_finished.connect(_finished)
	persistent_state.velocity.y = -700
	
func _physics_process(_delta):
	persistent_state.velocity.x = Input.get_axis("move_left", "move_right") * speed * _delta
	super._physics_process(_delta)

func _process(_delta):
	if Input.is_action_just_pressed("move_right"):
		animated_sprite.flip_h = false
	elif Input.is_action_just_pressed("move_left"):
		animated_sprite.flip_h = true
