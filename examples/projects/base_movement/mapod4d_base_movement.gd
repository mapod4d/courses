# tool

# class_name

# extends
extends Node3D

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

# ----- onready variables
@onready var character_camera = $CharacterBody3D/Camera3D
@onready var env_camera = $Camera3D

# ----- optional built-in virtual _init method

# ----- built-in virtual _ready method

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# ----- remaining built-in virtual methods

func _unhandled_input(event):
	if event.is_action_pressed("mapod4d_camera_switch"):
		if env_camera.current:
			character_camera.current = true
			env_camera.current = false
		else:
			character_camera.current = false
			env_camera.current = true


# ----- public methods

# ----- private methods
