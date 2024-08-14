class_name abs_upgrade
extends Node
## Classe abstrata para defição dos Upgrades.



## Sinal enviado quando o upgrade sobe de nível.
signal upgrade_level_up

## Nível do Upgrade.
var level: int = -1

## Titulo do Upgrade.
var title: String = "Titulo não Definido"

## Custo base do Upgrade.
var base_cost: int = -1
## Custo atual do upgrade.
var cost: int = -1

## classe virtual, precisa ser sobreescrita.[br]
## Retorna a descrição do Upgrade
func description() -> String:
    return "Descrição não Definida"

## classe virtual, precisa ser sobreescrita.[br]
## Retorna o custo base do upgrade.
func calculate_cost() -> void:
   printerr("calculate_cost() metodo não definido.")

## classe virtual, precisa ser sobreescrita.[br]
## Retorna se o player tem a quantidade para pagar pelo Upgrade.
func can_buy() -> bool:
    return false

## classe virtual, precisa ser sobreescrita.[br]
## conseme click para o upgrade subir de nível.
func level_up() -> void:
    printerr("level_up() metodo não definido")