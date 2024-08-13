class_name CompUpgrade
extends Control
## Componente para exibir upgrades.

## Referencia ao Titulo do upgrade
@export var lebel_title: Label

## Referencia a descrição do upgrade
@export var label_description: RichTextLabel

## Referencia ao botão de compra do upgrade._add_frame
@export var button: Button

## Upgrade que será exibido.
var upgrade: Up01ClickerUpgrade


func _ready() -> void:
	upgrade  = Up01ClickerUpgrade.new()

	update_label_title()
	update_label_description()
	update_button()

	HandlerClick.ref.click_created.connect(update_button)
	HandlerClick.ref.click_consumed.connect(update_button)

	upgrade.upgrade_level_up.connect(update_label_title)
	upgrade.upgrade_level_up.connect(update_label_description)
	upgrade.upgrade_level_up.connect(update_button)

## Atualiza o titulo do upgrade com o nível atual.
func update_label_title() -> void:
	var text: String = upgrade.title + " (%sx)" %upgrade.level
	lebel_title.text = text

## Atualiza a descriçãodo upgrade._add_frame
func update_label_description() -> void:
	label_description.text = upgrade.description()


## Ativa/desativa visibilidade do botão caso o player não possa comprar o upgrade.
func update_button(_qty: int = -1) -> void:
	if upgrade.can_buy():
		button.disabled = false
		return
	button.disabled = true

## Acionado quando o botão "Comprar" é acionado._apply_central_force
func _on_purchase_button_pressed():
	upgrade.level_up()
	