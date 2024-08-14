class_name Generator
extends View

## Referencia ao botão;
@export var button: Button

## Referencia ao relógio.
@export var timer: Timer


func _ready():
	super()
	visible = true


## Cria um click
func create_click() -> void:
	HandlerClick.ref.create_click(1)


## Gera 1 click por segundo
func click_generator() -> void:
	timer.start()
	button.disabled = true	
	

func _on_button_pressed():
	click_generator()
	

func _on_timer_timeout() -> void:
	create_click()
