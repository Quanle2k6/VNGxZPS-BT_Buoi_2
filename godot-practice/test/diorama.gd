extends Node3D

func _ready() -> void:
	if has_node("SpotLight3D"):
		$SpotLight3D.visible = true
	else:
		print("Can't see spotlight!")
	
func _process(delta: float) -> void:
	var turn_on_off = Input.is_action_just_pressed("turn_on_off_spotlight")
	if turn_on_off:
		if $SpotLight3D.is_visible_in_tree():
			$SpotLight3D.visible = false
		else:
			$SpotLight3D.visible = true
