class_name Game
extends Node


# Referencia o Singleton
static var ref: Game

# ontem os dados para salvar e carregar
var data: Data

# checa o Singleton
func _singleton_check() -> void:
	if not ref:
		ref = self
		return

	queue_free()

# Checa o singleton e inicialisa os Dados
func _enter_tree():
	_singleton_check()
	data = Data.new()