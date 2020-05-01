# godot_tests
Godot tests

## Physics Step

Testing if physics is applied at the correct frame.

* Godot 2D single threaded physics, setting velocity in _physics_process
	* position is applied as expected :)
* Godot 2D single threaded physics, setting velocity in _integrate_forces
	* position is applied one frame late :(
* Bullet 3D, setting velocity in _physics process
	* position is applied one frame late :(
* Bullet 3D, setting velocity in _integrate_forces
	* position is applied one frame late :(
