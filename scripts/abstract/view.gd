class_name  View
extends Control
## Classe Abstrata para definição das Views


## Referencia Interface do usuário.
@export var user_interface : UserInterface

## Referencia da View
@export var view: UserInterface.Views


## Inicializa a visibilidade da View.
func _ready():
	user_interface.nav_views.connect(_on_nav_view)
	

## Verifica  a view ativa e tira a visibilidade das outras
func _on_nav_view(request_view: UserInterface.Views) -> void:
	if request_view == view:
		visible = true
		return
	visible = false

