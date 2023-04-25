# tool

# class_name

# extends
extends CharacterBody3D

## A brief description of your script.
##
## A more detailed description of the script.
##
## @tutorial:			http://the/tutorial1/url.com
## @tutorial(Tutorial2): http://the/tutorial2/url.com


# ----- signals

# ----- enums

# ----- constants

# ----- exported variables

# ----- public variables

# ----- private variables
var _gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

# ----- onready variables

# ----- optional built-in virtual _init method

# ----- built-in virtual _ready method

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# ----- remaining built-in virtual methods

# ----- public methods

# ----- private methods
func _unhandled_input(event):
	if event.is_action_pressed("mapod4d_speed_up"):
		velocity += Vector3(0, 0, 0.5)
	if event.is_action_pressed("mapod4d_speed_down"):
		velocity += Vector3(0, 0, -0.5)
	if event.is_action_pressed("mapod4d_up_speed_up"):
		velocity += Vector3(0, 0.5, 0)
	if event.is_action_pressed("mapod4d_up_speed_down"):
		velocity += Vector3(0, -0.5, 0)


func _physics_process(delta):
	move_and_slide()
#	if not is_on_floor():
#		velocity.y -= _gravity * delta
