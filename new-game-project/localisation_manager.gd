extends Node
@onready var rich_text_label: RichTextLabel = $"../RichTextLabel"

@onready var keys=["FRUTA1","ANIMAL1","INSTRUÇAO1"]


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_set_start_language()
	_update_text()

func _set_start_language():
	TranslationServer.set_locale("en")
	
func _update_text():
	rich_text_label.text= tr(keys[1])
	
func update_language(lang:String):
	TranslationServer.set_locale(lang)

func _on_portugues_pressed() -> void:
	update_language("pt")
	_update_text()

func _on_frances_pressed() -> void:
	update_language("fr")
	_update_text()


func _on_english_pressed() -> void:
	update_language("en")
	_update_text()
