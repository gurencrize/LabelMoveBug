extends Control
@onready var rect:ColorRect = $ColorRect

func _on_button_pressed() -> void:
    var label:Label = load("res://label.tscn").instantiate()
    rect.add_child(label)
    var tween = get_tree().create_tween()
    label.text = "testtest"
    tween.tween_property(label,"position",label.position,0.5)
