class_name HandlerClick
extends Node
## Gerencia os Click's e os Signals.


## Referencia o Singleton
static var ref: HandlerClick


## checa o Singleton
func _enter_tree() -> void:
	if not ref:
		ref = self
		return

	queue_free()


## Emite o sinal quando o click é criado
signal click_created(qty: int)

## Emite o sinal quando o click é consumido
signal click_consumed(qty: int)


## retorna a quantidade atual de click's disponiveis
func click() -> int:
	return Game.ref.data.click


func create_click(qty: int) -> void:
	Game.ref.data.click += qty
	click_created.emit(qty)


## verifica se tenho a quantidade de clicks para consumir.
func consume_click(qty: int) -> Error:
	if qty > Game.ref.data.click:
		return Error.FAILED
	
	Game.ref.data.click -= qty
	click_consumed.emit(qty)

	return Error.OK

## Atualiza a quantidade de click obitidos de acordo com o nível do upgrade.
func trigger_clicker() -> void:
	var qty: int = 1
	qty += Game.ref.data.level
	create_click(qty)