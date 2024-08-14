class_name SaveSystem
## Gerencia o Salvamento do jogo.

## Caminho do arquivo salvoa ser salvo ou carregado.
const PATH : String = "user://save.tres" 
## Verifica se pode carregar os dados do jogo.
const SHOULD_LOAD : bool= true


## salva os dados..
static func save_data() -> void:
	ResourceSaver.save(Game.ref.data, PATH)

## Carrega os dados salvos e sobreescreve o objeto Game.ref.data.
static func load_data() -> void:
	if not SHOULD_LOAD:
		return
	if ResourceLoader.exists(PATH):
		Game.ref.data = load(PATH)