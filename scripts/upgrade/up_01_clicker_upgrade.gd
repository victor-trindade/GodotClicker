class_name  Up01ClickerUpgrade
extends Node
## Upgrade 01 - Aumenta a quantidade de click criado.

## Sinal enviado quando o upgrade sobe de nível.
signal upgrade_level_up

## Nível do Upgrade.
var level: int = 0

## Titulo do Upgrade.
var title: String = "Clicker Upgrade"

## Custo base do Upgrade.
var base_cost: int = 5
## Custo atual do upgrade.
var cost: int


## Carrega os dados.
func _init() -> void:
	calculate_cost()	
	level = Game.ref.data.level

## Descrição contem o Efeito e o Custo do Upgrade.
func description() -> String:
	var _description : String = "Aumento na criação de Click."
	_description += "\nEfeito: +1 na criação de click por Level."
	_description += "\nCusto: %s" %cost
	
	return _description

## Retorna o custo base do upgrade.
func calculate_cost() -> void:
	cost =  int(base_cost * pow(1.5, level))


## Retorna se o player tem a quantidade para pagar pelo Upgrade.
func can_buy() -> bool:
	if HandlerClick.ref.click() >= cost:
		return true
	return false

## conseme click para o upgrade subir de nível.
func level_up() -> void:
	var error: Error = HandlerClick.ref.consume_click(cost)
	if not error:
		level += 1
		Game.ref.data.level = level
		calculate_cost()
		upgrade_level_up.emit()