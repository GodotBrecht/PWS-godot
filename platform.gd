extends CharacterBody2D

var moving := false
var direction: Vector2 = Vector2(0, -1)
var speed: float = 60.0
var bounds: Vector2 = Vector2(164, 420)

func _ready() -> void:
	var button = get_node("../Knop")
	if button:
			button.connect("button_pressed", Callable(self,"_on_Knop_pressed"))
			button.connect("button_released", Callable(self,"_on_Knop_released"))
	
func _on_Knop_released() -> void:
	moving = false
	
func _on_Knop_pressed() -> void:
	moving = true 
	
func _physics_process(delta: float) -> void:
	if moving:
		if position.y > bounds.x:
			position.y -= speed * delta
		else: 
			position.y = bounds.x
	else:
		if position.y < bounds.y:
			position.y += speed * delta
		else: 
			position.y = bounds.y
