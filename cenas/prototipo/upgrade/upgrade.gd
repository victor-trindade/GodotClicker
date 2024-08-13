class_name Upgrade
extends Control


@export var user_interface : UserInterface
@export var view: UserInterface.Views


func _ready():
	user_interface.nav_views.connect(_on_nav_view)
	visible = true


## Verifica  a view ativa e tira a visibilidade das outras
func _on_nav_view(request_view: UserInterface.Views) -> void:
	if request_view == view:
		visible = true
		return
	visible = false

