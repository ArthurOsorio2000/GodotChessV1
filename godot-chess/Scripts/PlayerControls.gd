extends Camera3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Camera3D camera

	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	_mouseDown()

func _mouseDown():

	var mouse_position = get_viewport().get_mouse_position()
	var ray_length = 100
	var from = camera.project_ray_origin(mouse_position)
	var to = from + camera.project_ray_normal(mouse_position) * ray_length
	
	var world_position = project_position(mouse_position, position.z)
	print(world_position)
