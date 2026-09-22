extends Node3D

func _ready() -> void:
	if has_node("SpotLight3D"):
		$SpotLight3D.visible = true
	else:
		print("Can't see spotlight!")
	
func _process(delta: float) -> void:
	var turn_on_off = Input.is_action_just_pressed("turn_on_off_spotlight")
	var increase_energy_light = Input.is_action_just_pressed("increase_energy_light")
	var decrease_energy_light = Input.is_action_just_pressed("decrease_energy_light")
	var twist_spotlight_Left = Input.is_action_just_pressed("twist_spotlight_left")
	var twist_spotlight_Right = Input.is_action_just_pressed("twist_spotlight_right")


	if turn_on_off:
		if $SpotLight3D.is_visible_in_tree():
			$SpotLight3D.visible = false
		else:
			$SpotLight3D.visible = true
	if increase_energy_light:
		$SpotLight3D.light_energy += 0.5
	if decrease_energy_light:
		$SpotLight3D.light_energy -= 0.5
	if twist_spotlight_Left:
		$SpotLight3D.rotate_z(-0.1)
	if twist_spotlight_Right:
		$SpotLight3D.rotate_z(0.1)
