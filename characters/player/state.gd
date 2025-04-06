extends Node2D

class_name State

var change_state
var animated_sprite: AnimatedSprite2D
var persistent_state: CharacterBody2D

const speed: float = 40000.0
const g = 5 * 1e+2

func _physics_process(_delta):
	persistent_state.velocity.y += g * _delta
	persistent_state.move_and_slide()

func setup(change_state, animated_sprite, persistent_state):
	self.change_state = change_state
	self.animated_sprite = animated_sprite
	self.persistent_state = persistent_state
