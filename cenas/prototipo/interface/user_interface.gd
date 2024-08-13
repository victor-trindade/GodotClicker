class_name UserInterface

extends Control

enum Views {
	GENERATOR_VIEW,
	CLICK_VIEW,
	UPGRADE_VIEW,
}

signal nav_views(view: Views)

## Quando a view for criador de Click.
func _on_link_cliker_pressed():
	nav_views.emit(Views.CLICK_VIEW)


## Quando a view for Gerador de Click.
func _on_link_gerador_pressed():
	nav_views.emit(Views.GENERATOR_VIEW)

## Quando a view for Upgrade

func _on_upgrade_pressed():
	nav_views.emit(Views.UPGRADE_VIEW)

 