class_name  clickLabel
extends Label
## Mostra a quantidade de clicks diponiveis.


# Conectando os Signals.
func _ready() -> void:
	HandlerClick.ref.click_created.connect(update_text)
	HandlerClick.ref.click_consumed.connect(update_text)

## Atualiza o texto do label de acordo com a quantidade de clicks atuais.
func update_text(_qty: int = -1) -> void:
	text = "Click : %s" %HandlerClick.ref.click()
