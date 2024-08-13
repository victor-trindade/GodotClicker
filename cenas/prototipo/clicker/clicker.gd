class_name Clicker
extends Control


@export var user_interface : UserInterface
@export var view: UserInterface.Views
@export var number: int

func _ready():
	user_interface.nav_views.connect(_on_nav_view)
	visible = true



#Adiciona 1 click
func create_click() -> void:
	HandlerClick.ref.trigger_clicker()



func _on_button_pressed():
	create_click()

#Verifica  a view ativa e tira a visibilidade das outras
func _on_nav_view(request_view: UserInterface.Views) -> void:
	if request_view == view:
		visible = true
		return
	visible = false

	
