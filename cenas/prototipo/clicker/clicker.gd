class_name Clicker
extends View


## Inicializa a visibilidade
func _ready():
	super()
	visible = false



#Adiciona 1 click
func create_click() -> void:
	HandlerClick.ref.trigger_clicker()



func _on_button_pressed():
	create_click()



	
