extends RigidBody

var physicsFrame = 0
var renderFrame = 0

func _ready():
	pass # Replace with function body.

func _physics_process(deltaTime):
	physicsFrame += 1
	print("\n_physics_process: " + str(physicsFrame)+ " msec " + str(OS.get_ticks_msec()))

	if physicsFrame >= 10:
		set_linear_velocity(Vector3(10,0,0))

	force_update_transform()
	print("\tpos " + str(transform.origin))
	print("\tvel " + str(get_linear_velocity()))
	
func _process(deltaTime):
	if renderFrame != physicsFrame:
		print("_process: " + str(physicsFrame) + " msec " + str(OS.get_ticks_msec()))

	renderFrame	= physicsFrame
