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

# ----- onready variables


# ----- optional built-in virtual _init method

# ----- built-in virtual _ready method

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# ----- remaining built-in virtual methods

func _unhandled_input(event):
	if event.is_action_pressed("ui_up"):
		#position.z -= 0.5
		velocity += Vector3(0, 0, -0.5)
	if event.is_action_pressed("ui_down"):
		#position.z += 0.5
		velocity += Vector3(0, 0, 0.5)
	if event.is_action_pressed("ui_right"):
		if $"../Camera3D".current:
			$Camera3D.current = true
			$"../Camera3D".current = false
		else:
			$Camera3D.current = false
			$"../Camera3D".current = true
		print($Camera3D.current)
		print($"../Camera3D".current)
		print("---")

		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#	pass # Replace with function body.
	move_and_slide()
# ----- public methods

# ----- private methods





