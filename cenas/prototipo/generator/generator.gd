class_name Generator
extends Control


@export var button: Button
@export var timer: Timer
@export var user_interface : UserInterface
@export var view: UserInterface.Views

func _ready():

	user_interface.nav_views.connect(_on_nav_view)
	visible = false




#$ Cria 1 click
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


func _on_nav_view(request_view: UserInterface.Views) -> void:
	if request_view == view:
		visible = true
		return
	visible = false
