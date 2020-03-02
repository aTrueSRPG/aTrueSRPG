extends VBoxContainer

var currentScene = null

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

	#get current scene
	#match current scene variables
	#update CharacterDataSingleton with current scene variables
func _update_CharacterDataSingleton():
	currentScene = get_tree().get_current_scene().get_name()

	match currentScene:

		"General Character Information":
			print("You are inside the general Character information Scene")
			#update relevant singleton variables
			print("General Character Singleton Updated") #needs try/catch verification

		"Base Stats":
			print("You are inside the Base Stats Scene")
			#update relevant singleton Variables
			print("Base Stats Singleton Updated") #needs try/catch verification
			

		"Stat Maximums":
			print("You are inside the Stat Maximums Scene")
			#update relevant singleton variables
			print("Stat Maximums Singleton Updated") #needs try/catch verification

		"Stat Growth Rates":
			print("You are inside the Stat Growth Rates Scene")
			#update relevant singleton variables
			print("Stat Growth Rates Singleton Updated") #needs try/catch verification

		"Character Movement":
			print("You are inside the Character Movement Scene")
			#update relevant singleton variables
			print("Character Movement Singleton Updated") #needs try/catch verification

		"Character Sprites":
			print("You are inside the Character Sprites Scene")
			#update relevant singleton variables
			print("Character Sprites Singleton Updated") #needs try/catch verification


func _on_Base_Stats_pressed():
	print("Base Stats Button Pressed")
	_update_CharacterDataSingleton()
	get_tree().change_scene("res://Character Creator/UI/Right Sidebar/Base Stats/Base Stats.tscn")


func _on_Stat_Maximums_pressed():
	print("Stat Maximums Button Pressed")
	_update_CharacterDataSingleton()
	get_tree().change_scene("res://Character Creator/UI/Right Sidebar/Stat Maximums/Stat Maximums.tscn")


func _on_General_Character_Information_pressed():
	print("General Character Information Button Pressed")
	_update_CharacterDataSingleton()
	get_tree().change_scene("res://Character Creator/UI/Right Sidebar/General Character Information/General Character Information.tscn")


func _on_Stat_Growth_Rates_pressed():
	print("Stat Growth Rates Button Pressed")
	_update_CharacterDataSingleton()
	get_tree().change_scene("res://Character Creator/UI/Right Sidebar/Stat Growth Rates/Stat Growth Rates.tscn")



func _on_Movement_pressed():
	print("Movement Button Pressed")
	_update_CharacterDataSingleton()
	get_tree().change_scene("res://Character Creator/UI/Right Sidebar/Movement/Character Movement.tscn")


func _on_Sprites_pressed():
	print("Character Sprites Button Pressed")
	_update_CharacterDataSingleton()
	get_tree().change_scene("res://Character Creator/UI/Right Sidebar/Sprites/Character Sprites.tscn")
