extends RigidBody

var physicsFrame = 0
var renderFrame = 0

func _ready():
	pass # Replace with function body.

func _integrate_forces(bodyState):
	print("_integrate_forces: " + str(physicsFrame) + " msec " + str(OS.get_ticks_msec()))
#	if physicsFrame >= 10:
#		bodyState.linear_velocity = Vector3(10,0,0)
	if physicsFrame == 10:
		bodyState.apply_central_impulse(Vector3(10,0,0))
			
	print("\tsvel " + str(bodyState.linear_velocity))


func _physics_process(deltaTime):
	physicsFrame += 1
	print("\n_physics_process: " + str(physicsFrame)+ " msec " + str(OS.get_ticks_msec()))

	force_update_transform()
	print("\tpos " + str(transform.origin))
	
func _process(deltaTime):
	if renderFrame != physicsFrame:
		print("_process: " + str(physicsFrame) + " msec " + str(OS.get_ticks_msec()))

	renderFrame	= physicsFrame
